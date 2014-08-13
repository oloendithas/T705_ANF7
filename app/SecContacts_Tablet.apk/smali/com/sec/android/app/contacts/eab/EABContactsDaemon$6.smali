.class Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;
.super Ljava/lang/Object;
.source "EABContactsDaemon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendSubscribeForRefreshMenu(Landroid/content/ContentResolver;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2729
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    iput-object p2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2731
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2733
    const/4 v4, 0x0

    .line 2734
    .local v4, "num_contacts_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;->val$id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getTelnumbers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2736
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;->val$id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getTelnumbersTime(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 2739
    .local v7, "timelist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    .line 2741
    .local v2, "currenttime":Ljava/lang/String;
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current date is: :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "and Contactlist size is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 2745
    const-string v9, "EAB-ContactsEABDaemon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sending single subscribe for number when refresh:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2749
    if-eqz v7, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2753
    iget-object v8, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$100(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "AvailCacheExp"

    const-string v10, "AvailCacheExp"

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2759
    .local v1, "availtime":Ljava/lang/String;
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AVAILIBILITY_CACHE_EXPIRATION"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    if-eqz v1, :cond_3

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2763
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-virtual {v9, v8, v2, v10, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getSeconds(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 2768
    .local v5, "time":J
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "diif in time is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2770
    .local v0, "availExp":I
    const-string v9, "EAB-ContactsEABDaemon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "is 60Sec over :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    int-to-long v11, v0

    cmp-long v8, v5, v11

    if-lez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    int-to-long v8, v0

    cmp-long v8, v5, v8

    if-lez v8, :cond_2

    .line 2772
    const-string v8, "EAB-ContactsEABDaemon"

    const-string v9, "sending subscribe for refresh 1"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v8, v10, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForContact(Ljava/lang/String;ZZ)Z

    .line 2744
    .end local v0    # "availExp":I
    .end local v1    # "availtime":Ljava/lang/String;
    .end local v5    # "time":J
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2770
    .restart local v0    # "availExp":I
    .restart local v1    # "availtime":Ljava/lang/String;
    .restart local v5    # "time":J
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 2776
    :cond_2
    const-string v8, "EAB-ContactsEABDaemon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Please wait for 60 Sec"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2779
    .end local v0    # "availExp":I
    .end local v5    # "time":J
    :cond_3
    const-string v8, "EAB-ContactsEABDaemon"

    const-string v9, "sending subscribe for refresh 2"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v8, v10, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForContact(Ljava/lang/String;ZZ)Z

    goto :goto_2

    .line 2784
    .end local v1    # "availtime":Ljava/lang/String;
    :cond_4
    const-string v8, "EAB-ContactsEABDaemon"

    const-string v9, "sending subscribe for refresh 3"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v9, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$6;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v8, v10, v11}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sentSubscribeForContact(Ljava/lang/String;ZZ)Z

    goto :goto_2

    .line 2790
    :cond_5
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2791
    return-void
.end method
