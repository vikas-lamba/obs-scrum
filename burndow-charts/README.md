# Burndown charts – BS-Team

We currently create our burndown charts with [trollolo](https://github.com/openSUSE/trollolo).
Installation of trollolo and configuration of [trello](https://trello.com) API credentials is
documented [here](https://github.com/openSUSE/trollolo#installation).

## Starting a new Sprint

```shell
trollolo burndown --new-sprint
```

## Starting a new Sprint day
```shell
trollolo burndown
```

## Updating the burndown chart image for Sprint 07
```shell
trollolo plot 07
```

