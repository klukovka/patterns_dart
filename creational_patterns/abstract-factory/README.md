# Abstract Factory

## Суть паттерна

Абстрактная фабрика — это порождающий паттерн проектирования, который позволяет создавать семейства связанных объектов, не привязываясь к конкретным классам создаваемых объектов.

## Шаги реализации

1. Создайте таблицу соотношений типов продуктов к вариациям семейств продуктов.

2. Сведите все вариации продуктов к общим интерфейсам.

3. Определите интерфейс абстрактной фабрики. Он должен иметь фабричные методы для создания каждого из типов продуктов.

4. Создайте классы конкретных фабрик, реализовав интерфейс абстрактной фабрики. Этих классов должно быть столько же, сколько и вариаций семейств продуктов.

5. Измените код инициализации программы так, чтобы она создавала определённую фабрику и передавала её в клиентский код.

6. Замените в клиентском коде участки создания продуктов через конструктор вызовами соответствующих методов фабрики.
