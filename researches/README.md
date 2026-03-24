# researches 目录说明

该目录下每一个子文件夹都代表一个独立研究课题。

## 命名建议
- 使用短横线命名：`researches/<topic-name>/`
- 示例：`researches/llm-eval-2026-q1/`

## 最小结构建议
每个研究课题目录至少包含：
- `research-plan.md`
- `notes/`
- `data/raw/` 与 `data/processed/`
- `report.md`

可直接复制 `researches/_template/` 作为起点。

## 初始化方式
推荐使用仓库根目录脚本一键创建：

```bash
./tools/new_research.sh <topic-name>
```
