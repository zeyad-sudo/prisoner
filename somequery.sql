select * 
from prisoner 

 select count(ssn) as [number of prisoners]
 from prisoner 

  
select count(ssn)  as [number of prisoners], p.bid , p.rid 
from Prisoner p inner join room r
on p.rid=r.rid
inner join Building b 
on b.bid=r.bid
group by p.bid, p.rid

select * 
from prisoner p inner join CriminalState c
 on c.pssn=p.ssn
  inner join MedicalState m 
  on m.pssn=p.ssn 
   inner join PoliticsState pp
    on pp.pssn = p.ssn 
	 inner join marital ma
	  on ma.pssn=p.ssn 
	  inner join ProfessionalState pr
	  on pr.pssn=p.ssn
	  inner join ScientificState sc 
	  on sc.pssn=p.ssn
	  inner join WealthyState w 
	   on w.pssn=p.ssn


select fname+' '+lname as [prisoner name] , fdate , acual_fdate
from Prisoner inner join CriminalState
on pssn=ssn and  DATEDIFF(day , fdate , acual_fdate)<0
