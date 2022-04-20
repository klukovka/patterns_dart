# Wrapper, Обёртка, Decorator

## Суть паттерна

Декоратор — это структурный паттерн проектирования, который позволяет динамически добавлять объектам новую функциональность, оборачивая их в полезные «обёртки».

## Шаги реализации

1. Убедитесь, что в вашей задаче есть один основной компонент и несколько опциональных дополнений или надстроек над ним.

2. Создайте интерфейс компонента, который описывал бы общие методы как для основного компонента, так и для его дополнений.

3. Создайте класс конкретного компонента и поместите в него основную бизнес-логику.

4. Создайте базовый класс декораторов. Он должен иметь поле для хранения ссылки на вложенный объект-компонент. Все методы базового декоратора должны делегировать действие вложенному объекту.

5. И конкретный компонент, и базовый декоратор должны следовать одному и тому же интерфейсу компонента.

6. Теперь создайте классы конкретных декораторов, наследуя их от базового декоратора. Конкретный декоратор должен выполнять свою добавочную функцию, а затем (или перед этим) вызывать эту же операцию обёрнутого объекта.

7. Клиент берёт на себя ответственность за конфигурацию и порядок обёртывания объектов.