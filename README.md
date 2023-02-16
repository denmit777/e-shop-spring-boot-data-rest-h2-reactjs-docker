1.Name of project: e-shop-spring-boot-data-rest-h2-reactjs-docker

2.Launch of project: 
2.1 backend part: 
Build: 
docker build -t e-shop .

Run:
docker run --rm -itd -p 8081:8081 --name eshop e-shop

2.2 frontend part: 
Build:
\src\frontend-react\java-learn-app-main>npm install

Run:
\src\frontend-react\java-learn-app-main>npm start

3.Stop running project:
docker stop eshop

4.Ports of the project:
backend: http://localhost:8081
frontend: http://localhost:3000

5.Start page: http://localhost:3000

6.Logins/passwords/emails/roles of users:

Den/1234/den_mogilev@yopmail.com/ROLE_ADMIN,
Peter/4321/peter_mogilev@yopmail.com/ROLE_BUYER,
Asya/5678/asya_mogilev@yopmail.com/ROLE_BUYER,
Jimmy/P@ssword1/jimmy_mogilev@yopmail.com/ROLE_ADMIN,
Maricel/221182/maricel_mogilev@yopmail.com/ROLE_BUYER

7.Configuration: resources/application.properties

8.Templates: resources/templates

9.Database scripts: resources/data.sql

10.Sender's email: "denmit777@yandex.by"

11.Rest controllers:

UserController:
registerUser(POST): http://localhost:8081 + body;
authenticationUser(POST): http://localhost:8081/auth + body

GoodController:
save(POST): http://localhost:8081/goods/forAdmin + body;
getAllForAdmin(GET): http://localhost:8081/goods/forAdmin;
getAllForBuyer(GET): http://localhost:8081/goods/forBuyer;
getById(GET): http://localhost:8081/goods/forAdmin/{id};
update(PUT): http://localhost:8081/goods/forAdmin/{id} + body;
delete(DELETE): http://localhost:8081/goods/forAdmin/{id};
getTotalAmount(GET): http://localhost:8081/goods/forAdmin/total;

OrderController:
save(POST): http://localhost:8081/orders + body;
getAll(GET): http://localhost:8081/orders;
getById(GET): http://localhost:8081/orders/{id};
getTotalAmount(GET): http://localhost:8081/orders/total;

AttachmentController:
uploadFile(POST): http://localhost:8081/orders/{orderId}/attachments + body;
getById(GET): http://localhost:8081/orders/{orderId}/attachments/{attachmentId};
getAllByOrderId(GET): http://localhost:8081/orders/{orderId}/attachments;
deleteFile(DELETE): http://localhost:8081/orders/{orderId}/attachments/{attachmentName};

CommentController:
save(POST): http://localhost:8081/orders/{orderId}/comments + body;
getAllByOrderId(GET): http://localhost:8081/orders/{orderId}/comments;

FeedbackController:
save(POST): http://localhost:8081/orders/{orderId}/feedbacks + body;
getAllByOrderId(GET): http://localhost:8081/orders/{orderId}/feedbacks;

HistoryController:
getAllByOrderId(GET): http://localhost:8081/orders/{orderId}/history;

12.Launch of all the tests:
EditConfiguration -> JUnit -> name:mvn test -> All In Directory: e-shop-spring-boot-data-rest-h2-reactjs-docker\src\test ->
Environment variables : clean test

Controller tests: GoodControllerTest, OrderControllerTest
Converter tests: GoodConverterImplTest
Dto tests: UserLoginDtoTest
ServiceTests: GoodServiceImplTest
UtilsTests: OrderUserComparatorTest
