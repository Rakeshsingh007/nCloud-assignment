select avg(sal) as "average salary" from emp
group by deptno;

select avg(sal) as "average salary" from emp
where deptno = (select deptno from dept where loc = 'NEW YORK') and job <> 'PRESIDENT'
group by deptno;

select avg(sal) from emp where empno in (select empno from emp order by hiredate desc limit 4) ;

select min(sal) from emp where deptno = (select deptno from dept where loc = 'DALLAS')
group by job;