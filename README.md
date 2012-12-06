= Private Wiki plugin for Redmine.

Allows individual wiki pages to be set as private. Private pages are visible only to roles with "View private wiki pages" permission.
http://www.redmine.org/plugins/private_wiki

Not forked from original repo due some migration reasons.

== ChiliProject

If you are using ChiliProject you must take a look at plugin https://github.com/jnv/chiliproject_private_wiki by Jan Vlnas
which is a fork of current plugin. ChiliProject plugin offers different functionality. If you want some of its features, please let me know.

== Compatibility

There are two versions of the plugin:
    * 0.1.x for Redmine 1.4.x and lower
    * 0.2.x for Redmine 2.0.x and higher

== Installation

    cd /home/user/path_to_you_app/
    git clone git://github.com/f0y/redmine_private_wiki.git vendor/plugins/redmine_private_wiki
    git checkout redmine-private-wiki-0.2.1
    rake redmine:plugins:migrate RAILS_ENV=production

Also you can read instructions on http://www.redmine.org/projects/redmine/wiki/Plugins

== License

This plugin is licensed under the MIT license.
