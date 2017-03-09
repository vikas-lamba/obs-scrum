# Burndown charts – BS-Team

We currently create our burndown charts with [trollolo](https://github.com/openSUSE/trollolo).
Installation of trollolo and configuration of [trello](https://trello.com) API credentials is
documented [here](https://github.com/openSUSE/trollolo#installation).

## Starting a new Sprint

Run from `/burndown-charts/current`:

```shell
trollolo burndown --new-sprint
```

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

