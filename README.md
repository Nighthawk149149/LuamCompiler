# Getting started

## Welcome !

{% hint style="info" %}
**Good to know:** Luam is a joke language. I’m working on it to learn and have fun. Underst Understand that it will have issues that I may not be able to fix.
{% endhint %}

## Installing

Our design system is written in React, and can be installed into your project via NPM or Yarn.

{% tabs %}
{% tab title="npm" %}
`npm install --save @my-product/my-design-system`
{% endtab %}

{% tab title="yarn" %}
`yarn add -S my-design-system`
{% endtab %}
{% endtabs %}

## Usage

Import the components you need:

`import {Button, ActionBar} from @my-product/my-design-system`

Then use them in your app or components:

```javascript
const header = () => (
    <div>
        <ActionBar>
            <Button kind="primary" label="Save" />
            <Button kind="secondary" label="Cancel" />
        </ActionBar>
    </div>
)
```
