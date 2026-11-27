# DATA 220 · Week 12 demo

Example files for DATA 220 Week 12 (Interactive Visualization, Reproducible Reporting &
Communication), MacEwan University, Fall 2026.

The data are 312 episode ratings for six TV shows, from the TVmaze API.

| Folder | What it is | Hosted copy |
|---|---|---|
| `report/` | `got_report.qmd`, a Quarto report with an interactive plotly chart | Posit Connect Cloud (link below) |
| `app/` | `app.R`, a first Shiny app: choose a show, R redraws the chart | Posit Connect Cloud (link below) |

## Live links

- Report: (added after the first deployment)
- Shiny app: (added after the first deployment)

## Run it yourself

1. In RStudio (on your computer or in Posit Cloud), open `data220-week12-demo.Rproj`.
2. Report: open `report/got_report.qmd` and click **Render**.
3. App: open `app/app.R` and click **Run App**.

Install once: `install.packages(c("ggplot2", "dplyr", "plotly", "knitr", "rmarkdown", "shiny"))`

## How the hosted copies are made

Posit Connect Cloud deploys each folder straight from this repository. Each folder has a
`manifest.json` that lists the R packages it needs (made with `rsconnect::writeManifest()`).
When a change is pushed here, Connect Cloud can rebuild the report and the app.
