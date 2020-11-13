# <center> Neurofibromatosis Personalized Health (NFPH): NF Symptom Tracker App with Built-In Hearing Test </center>

![nf logo](./readme-logo.png)

## About

Neurofibromatosis Personalized Health is a symptom tracker application for patients with NF2 created as part of the
Children's Tumor Foundation Hack for NF.

### Story
When meeting with a patient mentor (NF2), we asked them what their concerns were when addressing the current resources available. The most pertinent was keeping track of their symptoms and being able to remember which provider to share these details with. Our patient mentor currently uses a note-taking app, however this leads to inconsistencies and incomplete notes. They also mentioned the limited available clinic resources for NF and added that hearing loss was one of the most important changes to track.

### Solution
We built an app specific to NF symptom tracking, with a built-in hearing test, so users have an at-home resource to measure hearing aptitude progression over time. Additionally, we aimed to open the platform to providers, giving them real-time updates and allowing them to quickly share feedback with their patients.

### Result
Users now have a personalized entry-logging system and more autonomy over tracking their hearing progression and other symptoms.

**To see the full demo, click [here](https://youtu.be/4suu2q9dEh0)


## Installation

Please find the repositories here: https://github.com/candacecodes/nfph-frontend and https://github.com/candacecodes/nfph-backend.

To run NF Personalized Health, first clone both the front and back end repositories into a single directory. 

cd into the nfph-backend directory and run the following commands in your terminal:

```
bundle install          # to track and install the exact versions of ruby gems needed for NF Personalized Health
rails db:create         # to create PostgreSQL database
rails db:migrate        # to run table migrations
rails db:seed           # to seed your database
rails server            # to start up your rails server
```

You should now cd into the nfph-frontend directory and run the following commands in your terminal:

```
npm install             # to download the necessary React packages and dependencies
npm start               # to open the app in your browser
```

## Using NF Personalized Health

### Patients Can:

<ul>
    <li>Sign up or log in.</li>
    <li>Add a new entry.</li>
    <li>View, update, and delete their entries.</li>
    <li>See comments from providers.</li>
    <li>Use the hearing test feature to monitor their symptom progression.</li>
    <li>View all providers.</li>
</ul>


### Providers Can:
<ul>
    <li>Sign up or log in.</li>
    <li>View their patients' entries.</li>
    <li>Add comments to patient entries.</li>
</ul>

## Future Scope

 [ ] Patient opt-in option to share their data with researchers
 [ ] Researcher portal + statistics analytics
 [ ] Quick chat feature
 [ ] Calendar showing provider availability and appointment booking option
 
## Developers

**Candace Choe**<br>
https://github.com/candacecodes<br>
https://www.linkedin.com/in/candacechoe/

**Carly La**<br>
https://github.com/carcarvroom<br>
https://www.linkedin.com/in/carlyla/

**Scott Espinosa**<br>
https://github.com/sfespinosa<br>
https://www.linkedin.com/in/scottespinosa/

**Iona Brabender**<br>
https://github.com/iona-b<br>
https://www.linkedin.com/in/iona-brabender/
