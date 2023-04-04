SELECT name, saleprice
FROM Customer, Orders
WHERE Customer.custid=Orders.custid;

// 왼쪽 외부 조인
SELECT name, saleprice
from customer left outer join orders on customer.custid=orders.custid;

// 왼쪽 외부 조인
SELECT customer.name, saleprice
from customer, orders
where customer.custid=orders.custid(+);

// 가장 비싼 도서의 가격 표시
SELECT max(price)
from book

// 가장 비싼 도서의 이름
SELECT bookname
from book
where price=35000;

// 가장 비싼 도서의 이름
SELECT bookname
from book
where price=(select max(price) from book);

// 도서를 주문한적이 있는 고객 아이디 찾기
SELECT custid
from orders;

// 고객 아이디에 해당하는 고객 이름 찾기
select name
from customer
where custid in (1,2,3,4);

// 도서를 주문한 적이 있는 고객의 이름
select name
from customer
where custid in (select custid from orders);

출판사별로 출판사의 평균 도서 가격보다 비싼 도서를 구하시오
select b1.bookname
from Book b1
where b1.price > (select avg(b2.price) from Book b2 where b2.publisher=b1.publisher);
