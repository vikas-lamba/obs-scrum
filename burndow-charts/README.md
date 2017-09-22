# Burndown charts – BS-Team

We currently create our burndown charts with [trollolo](https://github.com/openSUSE/trollolo).
Installation of trollolo and configuration of [trello](https://trello.com) API credentials is
documented [here](https://github.com/openSUSE/trollolo#installation). Use trollolo >= 0.0.14, otherwise you won't be able to use some of the documented commands.

## Starting a new Sprint

* Run from `/burndown-charts/current`:

```shell
trollolo burndown --new-sprint --plot-to-board
```

This command will automatically upload the burndown chart to Trello (you need to use a token with write rights).

* Add newly plotted chart and burndown yaml file to the git repo

* Move the old chart and the plotted image to the archive:

```shell
git mv burndow-charts/current/burndown-i.png ../old/
git mv burndow-charts/current/burndown-date-i.png ../old/
```

where `i` is the number of the old sprint.

## Updating the burndown chart

* Run from `/burndown-charts/current`:

```shell
trollolo burndown --plot-to-board
```

* Add newly plotted chart and burndown yaml file to the git repo
