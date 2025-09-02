aliquots(x) = [x%i==0 ? i : 0 for i in 1:x-1]
isperfect(x) = x>0 ? sum(aliquots(x)) == x : throw(DomainError(x))
isabundant(x) = x>0 ? sum(aliquots(x)) > x : throw(DomainError(x))
isdeficient(x) = x>0 ? sum(aliquots(x)) < x : throw(DomainError(x))
