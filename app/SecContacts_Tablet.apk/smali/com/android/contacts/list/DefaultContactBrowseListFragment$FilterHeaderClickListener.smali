.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p2, "x1"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 467
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 468
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 469
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v2

    .line 470
    .local v2, "isKnoxMode":Z
    if-nez v2, :cond_5

    .line 473
    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    .line 475
    .local v4, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v3

    .line 476
    .local v3, "isSimReady":Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_1

    .line 485
    :goto_0
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    .line 486
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0e0113

    invoke-static {v5, v6}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    .line 502
    .end local v2    # "isKnoxMode":Z
    .end local v3    # "isSimReady":Z
    .end local v4    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_0
    :goto_1
    return-void

    .line 478
    .restart local v2    # "isKnoxMode":Z
    .restart local v3    # "isSimReady":Z
    .restart local v4    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_1
    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v3, 0x1

    :goto_2
    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 493
    .end local v3    # "isSimReady":Z
    .end local v4    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_5
    sget-boolean v5, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v5, :cond_6

    .line 494
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 497
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v1, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "currentFilter"

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 500
    const/16 v5, 0x2711

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method
