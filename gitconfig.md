[alias]
  cc = "!co_authored_commit_by(){ usage='Something wrong, go and ask Jamie!!!'; while [ \"${#}\" -gt 0 ]; do case \"${1}\" in -m) shift; message="${1}"; shift;; --co) shift; co_username=\"${1}\"; case $co_username in \"ly\") co_author_msg=\"sause <lazureys@gmail.com>\";; \"4g\") co_author_msg=\"scglwsj <scglwsj@163.com>\";; \"mt\") co_author_msg=\"mutoe <mutoe@foxmail.com>\";; \"ad\") co_author_msg=\"anddd74 <liaoad_space@sina.com>\";;\"33\") co_author_msg=\"CassieRyu <793399678@qq.com>\";; *) echo \"No such user, go ask Jamie\"; exit 1; ;; esac; co_author=\"Co-authored-by: \"${co_author_msg}\"\n\"; shift;; *) shift;; esac; done; if [ -z \"${co_author}\" ]; then echo ${usage}; exit 1; fi; if [ -z \"${message}\" ]; then echo ${usage}; exit 1; fi; co_authored_message=\"${message}\n\n\n${co_author}\"; echo \"==== 🎉: Great you did pair today, 🐸 +1s ====\n\"; git commit -m \"${co_authored_message}\"; }; co_authored_commit_by "