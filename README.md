# deep_research

这是一个用于开展深度研究（Deep Research）的仓库。

## 目标
- 统一研究流程与产出格式
- 让每个研究课题都拥有独立、可追踪的工作空间
- 支持后续自动化与协作

## 核心原则
- **一个研究一个文件夹**：每个课题都放在 `researches/<research-name>/` 下，避免不同课题之间的数据和结论互相污染。
- 研究过程与产出（计划、数据、笔记、报告）都尽量收敛到对应课题目录。

## 仓库结构

```text
.
├── researches/
│   ├── _template/                 # 新研究模板（复制即用）
│   │   ├── README.md
│   │   ├── research-plan.md
│   │   ├── report.md
│   │   ├── notes/
│   │   │   └── README.md
│   │   ├── data/
│   │   │   ├── raw/
│   │   │   └── processed/
│   │   └── scripts/
│   │       └── README.md
│   └── README.md                  # 课题目录使用说明
├── docs/
│   └── methodology.md             # 通用方法论与评估标准
├── .gitignore
└── README.md
```

## 如何开始一个新研究
1. 复制模板目录：
   - `cp -R researches/_template researches/<your-research-name>`
2. 在新目录中填写：
   - `research-plan.md`（研究问题、范围、假设、里程碑）
   - `notes/`（过程记录）
   - `data/raw` 和 `data/processed`（原始与处理后数据）
   - `report.md`（最终结论）
3. 按需在 `scripts/` 中补充自动化脚本。

## 快速创建新研究
可使用脚本自动基于模板创建研究目录：

```bash
./tools/new_research.sh <your-research-name>
```

命名规则：仅小写字母、数字与短横线（例如 `llm-eval-2026-q1`）。

## GitHub Pages 部署（Hero 模版）
仓库已包含一个可直接部署的 Hero 首页：
- `index.html`
- `assets/styles.css`
- `.github/workflows/pages.yml`

部署方式：
1. 将默认分支设为 `main`。
2. 推送代码后，GitHub Actions 会自动执行 `Deploy GitHub Pages`。
3. 在仓库 `Settings -> Pages` 中确认来源为 `GitHub Actions`。
