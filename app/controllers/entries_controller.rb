class EntriesController < ApplicationController
    before_action :find_entry, only: [:show, :update, :destroy]

    def index
        entries = Entry.all
        render json: entries
    end

    def show
        @entry = Entry.find(params[:id])
        if @entry 
            render json: @entry
        else 
            render json: { error: 'entry could not be found' }
        end
    end

    def create
        entry = Entry.new(entry_params)
        if entry.save
            render json: entry 
        else 
            render json: { error: 'entry could not be created' }
        end
    end

    def update
        @entry = Entry.find(params[:id])
        @entry.update(entry_params)
        if @entry.valid?
            render json: @entry
        else 
            render json: { error: 'entry could not be found' }
        end
    end

    def destroy
        @entry = Entry.find(params[:id])
        if @entry
            @entry.delete
        else
            render json: { error: 'entry could not be found' }
        end
    end

    private
    def entry_params
        params.require(:entry).permit(:issue, :location, :image, :pain_level, :symptoms, :symptom_onset, :date_of_entry, :patient_id)
    end

    def find_entry
        entry = Entry.find(params[:id])
    end

end