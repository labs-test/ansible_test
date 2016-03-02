# A deployment of DjangoCMS

## Directory structure
  * `ansible/` contains the djangocms.yml playbook
  * `vagrant/` contains a Vagrant file which sets up ubuntu/trusty64 which has  been used for testing.

Note, the Playbook is only tested on ubuntu/trusty64 and basically
ignores any other distro.

## Ansible Playbook
The playbook sets up a MySQL server, nginx and creates a pristine
DjangoCMS setup. DjangoCMS is run by the user djangocms user from a virtual environment in the home directory of djangocms.
During setup of DjangoCMS, migrations are applied to MySQL. Uwsgi is run using upstart as djangocms user and ties together Django and nginx.

Furthermore, backup of MySQL is setup with the playbook as a daily cron job and includes a cleanup job.

The playbook has been tested and after completion a DjangoCMS login screen is available on port 80.

## Improvements
  * Better structure and use of variables in Ansible
  * Multiple MySQL users for different roles
  * Have nginx serve static content
  * Backup cron job in cron.daily instead of root's crontab

## Credits
The roles: `mysql` and `nginx` are from https://github.com/geerlingguy/
