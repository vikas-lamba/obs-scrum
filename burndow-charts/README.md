# Burndown charts – BS-Team

We currently create our burndown charts with [trollolo](https://github.com/openSUSE/trollolo).
Installation of trollolo and configuration of [trello](https://trello.com) API credentials is
documented [here](https://github.com/openSUSE/trollolo#installation).

## Starting a new Sprint

* Run from `/burndown-charts/current`:

```shell
trollolo burndown --new-sprint
```
* Plot the chart (see [below](#updating-the-burndown-chart-image) for detailed instruction)

* Add newly plotted chart and burndown yaml file to the git repo

* Move the old chart and the plotted image to the archive:

```shell
git mv burndow-charts/current/burndown-i.png ../old/
git mv burndow-charts/current/burndown-date-i.png ../old/
```

where `i` is the number of the old sprint.

## Starting a new Sprint day

Run from `/burndown-charts/current`:

```shell
trollolo burndown
```

## Updating the burndown chart image

Run from `/burndown-charts/current`:

```shell
trollolo plot i
```

where `i` is the number of the sprint. For example for the Sprint 07:

```shell
trollolo plot 07
```

