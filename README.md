# Git History Issue Label Replacer
Script to replace all issue links in commits in history of branch

Example history (git log):
```
commit c117ed877797f8377d041b0fabb8ccbab0130b6b (HEAD -> master, origin/master, origin/HEAD)
Author: Sarseth <elune90@gmail.com>
Date:   Fri Jan 31 07:01:22 2020 +0100

    #28: added bootstrap css darkly

commit 7982c014428abbe56331b344bd33157944c88f3e
Author: Sarseth <elune90@gmail.com>
Date:   Thu Jan 30 22:00:08 2020 +0100

    #31: changed basic settings in eslint and decided to stay with 80 per line

commit 43331b244359bd49c442a8a72c934e5dd77dda19
Author: Sarseth <elune90@gmail.com>
Date:   Thu Jan 30 08:05:10 2020 +0100

    #40: Focus type dictionary and full functionality for it

commit b36f70bad109df71f3ce066d1aa7b4729d1fbe27
Author: Sarseth <elune90@gmail.com>
Date:   Thu Jan 30 06:40:11 2020 +0100

    #36: when issue has no appearance of character, we show it when empty is marked
```

Replace dictionary (pattern: "key value"), example:
```
#3 PROJ-5
#28 PROJ-4
#31 PROJ-6
#33 PROJ-9

```
Last line must be empty atm

Run script: ```$ ./migrateHistory.sh dictionary```

New history:

```
commit 398ac9fff455c389e8e68f5f63ee27db7cf1130c (HEAD -> master)
Author: Sarseth <elune90@gmail.com>
Date:   Fri Jan 31 07:01:22 2020 +0100

    PROJ-4:  added bootstrap css darkly

commit 8e75ef5a8fbdfb7ab25599c686af1af504a771b4
Author: Sarseth <elune90@gmail.com>
Date:   Thu Jan 30 22:00:08 2020 +0100

    PROJ-6:  changed basic settings in eslint and decided to stay with 80 per line

commit 6805753ec482ea59092aebffdebd34d5b29f3bd8
Author: Sarseth <elune90@gmail.com>
Date:   Thu Jan 30 08:05:10 2020 +0100

    #40: Focus type dictionary and full functionality for it

commit aee3c837d84282b6bce32dc4569b530b355dfb40
Author: Sarseth <elune90@gmail.com>
Date:   Thu Jan 30 06:40:11 2020 +0100

    #36: when issue has no appearance of character, we show it when empty is marked
```

Now you can ```git push --force``` ;)
