# TASK-001：Codex 与 GitHub 桥接测试

## 任务目标

验证桌面端 Codex 是否能够：

1. 读取 GitHub 仓库中的任务文件
2. 按任务修改项目文件
3. 运行测试
4. 更新项目状态
5. 提交 Git
6. 推送到 GitHub

## 具体要求

请完成以下内容：

1. 创建 `hello.txt`
2. `hello.txt` 的唯一内容必须是：

Hello from desktop Codex

3. 创建 `verify.ps1`
4. `verify.ps1` 需要检查 `hello.txt` 的内容是否完全正确
5. 检查成功时输出：

PASS: hello.txt is correct

6. 创建或更新 `PROJECT_STATUS.md`，写明：
   - 当前任务：TASK-001
   - 当前分支：codex-test
   - 当前状态：completed
   - 测试结果：PASS
   - 修改文件：hello.txt、verify.ps1、PROJECT_STATUS.md

## 测试命令

请运行：

powershell -NoProfile -ExecutionPolicy Bypass -File .\verify.ps1

## Git 要求

- 不要修改 main 分支
- 使用分支：codex-test
- 提交信息使用：

test: verify Codex GitHub bridge

- 完成后将分支推送到 GitHub
- 最后报告最新 Commit ID
