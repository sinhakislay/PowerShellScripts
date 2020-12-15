Connect-PnPOnline -url <<Site url>>

#In this case I am using Asia Pacific Term GUID
    $ParentTerm = Get-PnPTerm -Identity <<Term Guid>> -TermSet "Regions" -TermGroup "Region names" -IncludeChildTerms -Recursive
    $countryterm = $ParentTerm.Terms
    foreach($term in $countryterm)
    {
        $addterms = $term.Terms
        foreach($addedterm in $addterms)
        {
            $ChildTerm = $addedterm.CreateTerm("New mine", 1033, (New-Guid))
            Invoke-PnPQuery 
        }
        
    }
