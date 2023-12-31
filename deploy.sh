

#!/bin/bash 

pwd && ls
echo "it is deployed" >> ./test.txt
cat test.txt

# format_version: 10
# pipelines:
#   Child3:
#     group: test
#     label_template: ${COUNT}
#     lock_behavior: none
#     display_order: -1
#     materials:
#       upstream-one:
#         pipeline: parent
#         stage: Test
#       upstream-two:
#         pipeline: Child
#         stage: job2
#     stages:
#     - multi-test:
#         fetch_materials: true
#         keep_artifacts: false
#         clean_workspace: false
#         approval:
#           type: success
#           allow_only_on_success: false
#         jobs:
#           Script:
#             timeout: 0
#             tasks:
#             - exec:
#                 arguments:
#                 - Hello frnds chai pee lo
#                 command: echo
#                 run_if: passed
