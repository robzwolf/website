# Robbie's Personal Website

[![Netlify Status](https://api.netlify.com/api/v1/badges/38497b80-a76c-4c5e-b5ee-dfb22f6c9963/deploy-status)](https://app.netlify.com/sites/robbie-dev/deploys)

This is a Jekyll personal portfolio website hosted on Netlify.

https://www.robbie.dev

Based on [MLH-Fellowship/portfolio-template](https://github.com/MLH-Fellowship/portfolio-template).

## Add Cards to the Portfolio

Head to `_data` and fill out `volunteering.yml`, `experience.yml` and `education.yml`.

Volunteering example.
```yaml
- role: Lead Organiser
  company: DurHack
  dates: March 2017 – December 2019
  logo: dh.svg
  class: dh
```

Experience example.
```yaml
- role: Junior PHP Developer
  company: Komodo Digital
  dates: September 2018 – August 2019
  logo: komodo.png
  class: komodo
```

Education example.
```yaml
- course: AWS Developer – Associate
  institute: Amazon Web Services
  dates: January 2021
  logo: aws-dev.png
  class: aws-dev
```

### Styles and Images
Add classes to `_sass/cards.scss` to style cards. Class names match the `class` YAML attribute on cards.

Add images to `assets/img/*`, where `*` is the respective directory for `volunteering`, `education` or `experience`.

## Development

If you want to test it locally or add some new features, run the below commands. Make sure to have Ruby, Bundler and netlify-cli installed.

```
bundle install
netlify dev
```
