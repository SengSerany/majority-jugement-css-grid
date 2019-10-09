
[1mFrom:[0m /home/celine/Bureau/jugement_majoritaire/app/views/home/index.html.erb @ line 9 ActionView::CompiledTemplates#_app_views_home_index_html_erb___1236278733137432093_47432007457240:

     [1;34m4[0m:         <% @candidats.each do |candidat| %>
     [1;34m5[0m:         <div class="candidat">
     [1;34m6[0m: 
     [1;34m7[0m:         <% totalVote = candidat.exellent + candidat.veryGood + candidat.good + candidat.soSo + candidat.notReally + candidat.bad + candidat.veryBad%>
     [1;34m8[0m: 
 =>  [1;34m9[0m:         <% binding.pry%>
    [1;34m10[0m: 
    [1;34m11[0m:             <div>Exellent: <%= candidat.exellent %>,</div>
    [1;34m12[0m:             <div>Very good: <%= candidat.veryGood %>,</div>
    [1;34m13[0m:             <div>Good: <%= candidat.good %>,</div>
    [1;34m14[0m:             <div>So so: <%= candidat.soSo %>,</div>

