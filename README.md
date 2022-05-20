# Getting started

## Welcome !

{% hint style="info" %}
**Good to know:** A design system is a product, and similar best practices to product docs apply when documenting a design system. Offering succinct ways to get started is a great way to introduce the concepts of your design system, while empowering folks to use it for their needs.
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
