Case Study: Dependency Inversion Principle (DIP)
================================================

Overview
--------

This case study explores the implementation of the **Dependency Inversion Principle (DIP)** in a PHP application. DIP, one of the five SOLID design principles, suggests that high-level modules should not depend on low-level modules. Both should depend on abstractions, which means the details should depend on policies, not the other way around.

Problem Statement
-----------------

The original codebase violated the DIP by having high-level services, such as `OrderProcessingService`, directly depend on low-level concrete classes like `DiscountService` and `StripePaymentService`. This design was problematic for several reasons:

*   It tightly coupled the `OrderProcessingService` to specific implementations, making it difficult to replace or extend those implementations.
    
*   It hindered testability as it was challenging to mock or stub the dependencies.
    
*   Any change in the low-level modules required changes in the high-level modules, increasing the risk of bugs and making the system harder to maintain.
    

This design violated DIP because it didn't separate the policy-making code (high-level modules) from the detail-providing code (low-level modules). This led to a system that was rigid, difficult to extend, and prone to errors.

Refactoring Process
-------------------

To comply with DIP, we refactored the system by introducing abstractions in the form of contracts (interfaces). The high-level `OrderProcessingService` now depends on these contracts (`DiscountContract` and `StripePaymentContract`) instead of concrete classes. The low-level modules (`DiscountService` and `StripePaymentService`) implement these contracts, allowing the high-level module to operate independently of the specific implementations.

*   [Original Implementation](https://github.com/thiiagoms/dependency-inversion-principle/commit/4c24ebb02eecc42c7cffb69abcbf4a76c62469fa)
    
*   [Refactored Implementation](https://github.com/thiiagoms/dependency-inversion-principle/commit/78ccd51cd970e4bbc9fe3983dc1d5a0540e200d1)

Benefits of DIP
---------------

### 1\. **Maintainability**

*   The code is easier to maintain because high-level modules are not impacted by changes in low-level modules. New implementations can be introduced without modifying the high-level logic.
    

### 2\. **Testability**

*   The system is more testable because high-level modules can be tested in isolation by mocking the contracts they depend on, without needing the actual low-level implementations.
    

### 3\. **Flexibility**

*   The application is more flexible and can easily accommodate new payment gateways or discount strategies by simply implementing the corresponding contracts, without altering existing functionality.
    

### 4\. **Scalability**

*   The system is more scalable because new features can be added by creating new implementations of existing contracts, making the application more adaptable to changing business requirements.
    

Usage
-----

To run this application, follow the steps below:

```bash
$ git clone https://github.com/thiiagoms/dependency-inversion-principle
$ cd dependency-inversion-principle
dependency-inversion-principle $ docker-compose up -d
dependency-inversion-principle $ docker-compose exec app bash
dependency-inversion-principle $ docker exec -i <mysql-container-id> mysql -u root -proot < ./.devops/mysql/script.sql 
thiiagoms@ccff493ba9:/var/www$ composer install -vvv
thiiagoms@ccff493ba9:/var/www$ php app.php
```