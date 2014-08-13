.class Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;
.super Landroid/os/AsyncTask;
.source "GroupSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateGroupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private contactId:J

.field private headerCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;Landroid/content/Context;JLcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # J
    .param p5, "checkBox"    # Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .prologue
    .line 908
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 909
    iput-object p2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->c:Landroid/content/Context;

    .line 910
    iput-wide p3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->contactId:J

    .line 911
    iput-object p5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->headerCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 912
    return-void
.end method

.method private getAggregatedGroupToBeUpdated(Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "adapter"    # Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 971
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v4, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 973
    const/4 v4, 0x0

    .line 991
    .end local v4    # "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v4

    .line 976
    .restart local v4    # "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 978
    const/4 v2, 0x0

    .line 979
    .local v2, "isChecked":Z
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 980
    invoke-virtual {p1, v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v5}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v2

    .line 982
    :cond_2
    if-eqz v2, :cond_3

    .line 983
    invoke-virtual {p1, v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v5}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, "realTitle":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    .end local v3    # "realTitle":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "SelectGroupFragment"

    const-string v6, "IndexOutOfBoundsException in getAggregatedGroupToBeUpdated"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getGroupValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1029
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1030
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v1, "account_type"

    const-string v2, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v1, "account_name"

    const-string v2, "vnd.sec.contact.agg.account_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v1, "data1"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v1, "contact_id"

    iget-wide v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1036
    return-object v0
.end method

.method private getRawContactId()J
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 1041
    const-wide/16 v6, -0x1

    .line 1043
    .local v6, "rawContactId":J
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "contact_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v9, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->contactId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1047
    .local v8, "rawContactIdCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1048
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1051
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1053
    :cond_1
    return-wide v6
.end method

.method private resetGroups()V
    .locals 4

    .prologue
    .line 963
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 964
    .local v0, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 965
    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v0, v1

    .line 966
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND  mimetype=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private updateAggregatedGroup(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v9, 0x64

    .line 995
    if-nez p1, :cond_1

    .line 1026
    :cond_0
    return-void

    .line 999
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v6, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "group_membership"

    invoke-static {v10, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1002
    .local v2, "dataUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 1003
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v4

    if-ge v9, v10, :cond_3

    move v1, v9

    .line 1006
    .local v1, "count":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_2

    .line 1007
    add-int v10, v4, v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 1020
    :cond_2
    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->c:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.android.contacts"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1021
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :goto_3
    add-int/lit8 v4, v4, 0x64

    goto :goto_0

    .line 1003
    .end local v1    # "count":I
    .end local v5    # "j":I
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v1, v10, v4

    goto :goto_1

    .line 1010
    .restart local v1    # "count":I
    .restart local v5    # "j":I
    :cond_4
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1012
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    add-int v10, v4, v5

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1013
    .local v7, "realTitle":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->getGroupValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    .line 1014
    .local v8, "values":Landroid/content/ContentValues;
    invoke-virtual {v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1015
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1022
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v7    # "realTitle":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 1023
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 900
    check-cast p1, [Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->doInBackground([Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;)Ljava/lang/Void;
    .locals 13
    .param p1, "adapter"    # [Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->headerCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v7

    .line 922
    .local v7, "isHeaderChecked":Z
    const/4 v11, 0x0

    .line 924
    .local v11, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v7, :cond_0

    .line 925
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->getAggregatedGroupToBeUpdated(Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->resetGroups()V

    .line 930
    if-nez v7, :cond_1

    .line 931
    invoke-direct {p0, v11}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->updateAggregatedGroup(Ljava/util/ArrayList;)V

    .line 934
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->getRawContactId()J

    move-result-wide v8

    .line 935
    .local v8, "rawContactId":J
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "raw_contact_id =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 941
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 942
    :cond_2
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    .line 943
    .local v10, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    invoke-virtual {v0, v1, v2, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 947
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 948
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 950
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 900
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 955
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->c:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->mProgress:Landroid/app/ProgressDialog;

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->c:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    .line 960
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 916
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->c:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->c:Landroid/content/Context;

    const v3, 0x7f0e0489

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$UpdateGroupTask;->mProgress:Landroid/app/ProgressDialog;

    .line 917
    return-void
.end method
