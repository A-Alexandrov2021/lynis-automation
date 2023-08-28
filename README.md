# lynis-automation
Lynis ( Bash automation of audit process for domain networks )

Bash script that you can use to automate the weekly update of Lynis and perform a system audit using Lynis on all hosts in your domain. It will then send the results of the audit to the specified email address.

Make sure to replace "XXXXX@mail.com" with your actual email address, and update the for loop to include the list of host names you want to audit.

To schedule the script to run every week at 3:00 AM, you can use the cron scheduler. Run the following command to edit the cron jobs for the current user:

crontab -e

Then add the following line to schedule the script to run at 3:00 AM every Sunday:

0 3 * * 0 /path/to/your/lynis_automation.sh

Replace /path/to/your/lynis_automation.sh with the actual path to your Bash script. Save the file and exit the editor.

This script assumes you have lynis and the mail command installed on your system. You might need to adjust the paths and commands according to your system's configuration. Additionally, be mindful of sending sensitive data via email and ensure you have the necessary permissions to automate tasks and read audit data.

Instruction for Cloning and Running
Cloning the Repository:

git clone https://github.com/A-Alexandrov2021/lynis-automation.git

Running the Script:

Navigate into the repository directory: cd lynis-automation
Make the script executable: chmod +x lynis_automation.sh
Run the script: ./lynis_automation.sh

Setting Up Cron Job
Edit Cron Jobs:

Open the terminal and run: crontab -e
Add Cron Job:

Add the following line to schedule the script to run at 3:00 AM every Sunday:

0 3 * * 0 /path/to/lynis-automation/lynis_automation.sh

Replace /path/to/lynis-automation/script.sh with the actual path to your script in the cloned repository.

Save and Exit:

Save the file and exit the editor.

Important Notes

Ensure that the lynis and mail commands are available on the system where the script will be run.
Make sure to handle sensitive information securely, especially when sending data via email.
Test the script and cron job thoroughly to ensure they work as expected.


