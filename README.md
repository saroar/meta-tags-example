It's a primitive example of using meta-tags in controller. My friend asked me to show him how to manage meta tags at static pages - and i decided to help him.

We have a model MetaTag. In migration where we create this table we also call for a rake task that scans current routes and creates necessary ones. Created meta_tag can be edited in ActiveAdmin panel.
