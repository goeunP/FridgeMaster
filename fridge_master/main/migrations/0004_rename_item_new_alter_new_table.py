# Generated by Django 5.0.6 on 2024-06-07 21:38

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ("main", "0003_item"),
    ]

    operations = [
        migrations.RenameModel(
            old_name="Item",
            new_name="New",
        ),
        migrations.AlterModelTable(
            name="new",
            table="New",
        ),
    ]
