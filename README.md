# SimpleProcessRunner

Run shell-less processes ansychronously and optionally wait for them to complete

### 1. Basic Usage - Run a process and read the result back

```
process = SimpleProcessRunner.run_process(['ps', 'aux'])
exit_code, stdout, stderr = process.wait
```