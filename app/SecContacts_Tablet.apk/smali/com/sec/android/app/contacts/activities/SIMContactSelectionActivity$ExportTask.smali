.class public Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "SIMContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_SUCCESS:I = 0x1


# instance fields
.field private bIsSim1:Z

.field private count:I

.field private mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

.field private mSelectedContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

.field private mode:I

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V
    .locals 1
    .param p2, "target"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1615
    .local p3, "selectedInfoHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .line 1616
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1603
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->bIsSim1:Z

    .line 1617
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .line 1618
    iput-object p3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    .line 1619
    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I
    invoke-static {p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    .line 1620
    invoke-static {p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 1621
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 12
    .param p1, "target"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
    .param p2, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1661
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ProgressDialog;

    .line 1662
    .local v11, "prog":Landroid/app/ProgressDialog;
    const-string v4, "vnd.sec.contact.sim"

    .line 1663
    .local v4, "destAccountType":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1665
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1667
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount()I

    move-result v6

    .line 1668
    .local v6, "dbEnableCount":I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1679
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1680
    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z
    invoke-static {p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$900(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1885
    .end local v6    # "dbEnableCount":I
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1669
    .restart local v6    # "dbEnableCount":I
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v3, 0x190

    if-ne v0, v3, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount(Ljava/lang/String;)I

    move-result v6

    .line 1671
    const-string v4, "vnd.sec.contact.sim2"

    goto :goto_0

    .line 1684
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1796
    .local v1, "contactId":J
    if-lez v6, :cond_1

    .line 1797
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v0, :cond_4

    .line 1798
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_ExportAllNumberToSIM"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1805
    const/4 v9, 0x0

    .line 1806
    .local v9, "dbTotalCount":I
    const/4 v8, 0x0

    .line 1807
    .local v8, "dbSavedCount":I
    const/4 v7, 0x0

    .line 1809
    .local v7, "dbRemainedCount":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getDBNumberCount(J)I

    move-result v9

    .line 1810
    move v7, v9

    .line 1811
    if-nez v9, :cond_5

    .line 1812
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim(JLjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 1813
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1814
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 1815
    add-int/lit8 v6, v6, -0x1

    .line 1871
    .end local v7    # "dbRemainedCount":I
    .end local v8    # "dbSavedCount":I
    .end local v9    # "dbTotalCount":I
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_ExportAllNumberToSIM"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1875
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1876
    add-int/lit8 v6, v6, -0x1

    .line 1877
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto/16 :goto_0

    .line 1818
    .restart local v7    # "dbRemainedCount":I
    .restart local v8    # "dbSavedCount":I
    .restart local v9    # "dbTotalCount":I
    :cond_5
    :goto_1
    if-lez v7, :cond_4

    if-lez v6, :cond_4

    .line 1819
    const/4 v8, 0x0

    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sub-int v3, v9, v7

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim(JLjava/lang/String;I)I

    move-result v8

    .line 1822
    if-lez v8, :cond_6

    .line 1823
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    .line 1824
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 1825
    add-int/lit8 v6, v6, -0x1

    .line 1826
    sub-int/2addr v7, v8

    goto :goto_1

    .line 1828
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1833
    .end local v7    # "dbRemainedCount":I
    .end local v8    # "dbSavedCount":I
    .end local v9    # "dbTotalCount":I
    :cond_7
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1834
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim(JLjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    .line 1836
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1856
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToSim(JZ)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    .line 1857
    const-string v0, "KOR"

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 1597
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Void;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->doInBackground(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V
    .locals 10
    .param p1, "target"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
    .param p2, "result"    # Ljava/lang/Integer;

    .prologue
    const v7, 0x7f0e03bc

    const v9, 0x7f0e03b6

    const v8, 0x7f0e03b9

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1891
    move-object v1, p1

    .line 1893
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_3

    .line 1894
    const-string v3, "SIMContactSelectionActivity"

    const-string v6, "progress null"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :goto_0
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-ne v3, v6, :cond_7

    .line 1908
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v3, :cond_0

    .line 1910
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1912
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    if-ne v3, v4, :cond_5

    .line 1913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1920
    .local v0, "content":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1921
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v6, v9, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V

    .line 1962
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1963
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1965
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/preference/ContactsPreferences;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/preference/ContactsPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/contacts/preference/ContactsPreferences;->setDelete(Z)V

    .line 1968
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1969
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1971
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 1972
    return-void

    .line 1896
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1897
    const-string v3, "SIMContactSelectionActivity"

    const-string v6, "progress.get null"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1900
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1901
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 1916
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v7, 0x7f0e03bd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto/16 :goto_1

    .line 1924
    .end local v0    # "content":Ljava/lang/String;
    :cond_6
    const v3, 0x7f0e02d0

    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1932
    :cond_7
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mode:I

    if-nez v3, :cond_0

    .line 1934
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1936
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    if-ne v3, v4, :cond_8

    .line 1937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1944
    .restart local v0    # "content":Ljava/lang/String;
    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1945
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v6, v9, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 1940
    .end local v0    # "content":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v7, 0x7f0e03bd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_4

    .line 1948
    .end local v0    # "content":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f10000b

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 1950
    .local v2, "format":Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .end local v2    # "format":Ljava/lang/String;
    :cond_a
    move v3, v5

    .line 1965
    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1597
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->onPostExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
    .locals 6
    .param p1, "target"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1626
    const v3, 0x7f0e007c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1627
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1628
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1629
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1630
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1631
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1632
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1633
    new-instance v3, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1647
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1649
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    .line 1650
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1653
    move-object v0, p1

    .line 1654
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1655
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1597
    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    return-void
.end method
