class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, 'NFPH')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'NFPH', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            patient_uuid = decoded_token[0]['patient_uuid']
            @patient = Patient.find_by(patient_uuid: patient_uuid)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
    
end
