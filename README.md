# Contents of Preview Branch

This branch is based on tag Elektron-SDK_1.1.0 with additional code to fix Issue #26 on GitHub.

This fix addresses a thread-safety issue with EMA Java which may be encountered using multiple threads to access a shared consumer instance. The QA tool used to reproduce this issue is found in Java/Ema/TestTools/QATools.

