# better-menu

***DESCRIPTION***
This is a concept database for an app idea called Better Menu, a business-to-business model that aims to provide customer feedback to small businesses in the food industry.

***CONTENTS***

- Better_Menu_ERD.pdf: An entity relationship diagram showing the overall structure of the bettermenu database.
- ProjectLog.txt: A log of all of the commits with notes, as well as a brief summary of the initial interview.
- bettermenu_mysql_backup.sql: The backup file required for installation.
- bettermenu_samplequeries.sql: Some handy, sample queries that can be used on the database after installation.

***INTALLATION***
This section assumes the user has MySQLWorkbench installed and has established a server connection.

1. Download bettermenu_mysql_backup.sql, found in this repository.
2. Open up MySQLWorkbench and connect to your desired server.
3. In the 'Administration' tab, navigate to 'Data Import/Restore' under 'MANAGEMENT.'
4. Under the 'Import Options' section, select the 'Import from Self-Contained File' option.
5. Type the file path to the backup file or click the [.] on the right of the text box to navigate to it.
6. Under the 'Default Schema to be Imported To' section, click [New...] and name the schema 'bettermenu.'
7. Click [Start Import] in the bottom right.

From there, navigate to the 'Schemas' tab and right click to refresh your schemas on the sidemenu.
