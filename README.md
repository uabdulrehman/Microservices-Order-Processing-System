Microservices Order Processing System
(Event-Driven Formal Verification Model)
 Project Overview

This project is developed for the Software Verification and Validation (SVV) Lab.
It models a Microservices-based Order Processing System using an event-driven architecture and applies formal methods to ensure system correctness.

The project is not a full software application, but a formal verification model that focuses on correctness, consistency, and constraint validation using different formal techniques.

The system is verified using:

Z Notation (State modeling and invariants)
VDM Specification (Functional contracts using pre/post conditions)
Alloy Modeling (Relational verification and counterexample detection)
Validation techniques (CI pipeline and security demonstration)
 System Description

The system represents a simplified microservices architecture for order processing.

Main services include:

Order Service
Payment Service
Inventory Service
Shipping Service

The system follows an event-driven workflow where each event updates the system state in a controlled and verified manner:

OrderCreated
PaymentConfirmed
InventoryReserved
OrderShipped
OrderCancelled

Each transition is formally defined and verified to prevent invalid system behavior.

 Project Objectives
To formally define system states using Z Notation
To ensure correctness using system invariants
To define functional behavior using VDM contracts
To detect inconsistencies using Alloy modeling
To validate system behavior using structured verification techniques
 System States
State	Description
Created	Order is created but not yet processed
Paid	Payment is successfully completed
Reserved	Inventory is reserved for the order
Shipped	Order is successfully delivered
Cancelled	Order is cancelled before shipping
 Formal Verification Techniques
 Z Notation

Used for:

System state definition
System invariants
Valid state transitions

Example constraint:

An order must be paid before shipping
 VDM Specification

Used for:

Pre-conditions (before operation execution)
Post-conditions (after operation execution)
Functional behavior of system operations

Operations include:

Create Order
Confirm Payment
Reserve Inventory
Ship Order
Cancel Order
 Alloy Modeling

Used for:

Structural verification of system states
Relationship modeling between order states
Detection of invalid scenarios using counterexamples

Example:

Detecting shipping without payment
Detecting invalid state transitions
 Functional Requirements
The system shall allow customers to create orders
The system shall process payment before shipping
The system shall reserve inventory after payment
The system shall ship only valid paid and reserved orders
The system shall allow cancellation before shipping
 Validation Approach

The system is validated using multiple verification methods:

Requirement traceability to formal models
Invariant checking using Z Notation
Contract verification using VDM
Structural checking using Alloy
CI pipeline execution using GitHub Actions
Security validation (OWASP ZAP used on demo system only)
 Project Structure
Microservices-Order-Processing-System
│
├── README.md
├── requirements
├── z-model
├── vdm-spec
├── alloy-model
├── validation
├── ci-pipeline
└── screenshots
 Conclusion

This project demonstrates the use of formal methods to verify a Microservices Order Processing System.

By using Z Notation, VDM, and Alloy, the system ensures correctness, consistency, and reliability of all order processing operations.

The validation process confirms that the system follows correct event-driven behavior and prevents invalid state transitions through formal verification techniques.