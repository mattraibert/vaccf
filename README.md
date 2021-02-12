Very rough app that scans rite aid and costco for availability:

Run `VaccSite.any_slots?` from `rails console`:


```
$ rails c
Running via Spring preloader in process 65193
Loading development environment (Rails 6.1.1)
[1] pry(main)> VaccSite.any_slots?
   (1.1ms)  SELECT sqlite_version(*)
  VaccSite Load (1.4ms)  SELECT "vacc_sites".* FROM "vacc_sites"
[......]
=> [{:id=>1, :type=>"RiteAid", :slots?=>false},
 {:id=>2, :type=>"RiteAid", :slots?=>false},
 {:id=>4, :type=>"RiteAid", :slots?=>false},
 {:id=>5, :type=>"RiteAid", :slots?=>false},
 {:id=>6, :type=>"RiteAid", :slots?=>false},
 {:id=>7, :type=>"RiteAid", :slots?=>false},
 {:id=>8, :type=>"RiteAid", :slots?=>true},
 {:id=>10, :type=>"RiteAid", :slots?=>false},
 {:id=>11, :type=>"RiteAid", :slots?=>false},
 {:id=>12, :type=>"RiteAid", :slots?=>false},
 {:id=>13, :type=>"RiteAid", :slots?=>false},
 {:id=>14, :type=>"NyGov", :slots?=>true},
 {:id=>16, :type=>"Costco", :slots?=>false},
 {:id=>17, :type=>"Costco", :slots?=>false},
 {:id=>19, :type=>"Costco", :slots?=>false},
 {:id=>20, :type=>"Costco", :slots?=>false},
 {:id=>21, :type=>"Costco", :slots?=>false}]
[2] pry(main)> VaccSite.find(8)
  VaccSite Load (0.3ms)  SELECT "vacc_sites".* FROM "vacc_sites" WHERE "vacc_sites"."id" = ? LIMIT ?  [["id", 8], ["LIMIT", 1]]
=> #<RiteAid:0x00007ff56a023750
 id: 8,
 check_url: "https://www.riteaid.com/services/ext/v2/vaccine/checkSlots?storeNumber=4945",
 type: "RiteAid",
 created_at: Tue, 09 Feb 2021 19:41:08.374742000 UTC +00:00,
 updated_at: Thu, 11 Feb 2021 13:16:16.179923000 UTC +00:00,
 desc: nil,
 meta: "{\"storeNumber\":4945}">
[3] pry(main)> VaccSite.find(8).raw
  VaccSite Load (0.2ms)  SELECT "vacc_sites".* FROM "vacc_sites" WHERE "vacc_sites"."id" = ? LIMIT ?  [["id", 8], ["LIMIT", 1]]
=> {"Data"=>{"slots"=>{"1"=>true, "2"=>false}}, "Status"=>"SUCCESS", "ErrCde"=>nil, "ErrMsg"=>nil, "ErrMsgDtl"=>nil}
[4] pry(main)> 
```
