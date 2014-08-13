.class final Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SIMContactPickerActionListener"
.end annotation


# instance fields
.field mSelectedInfoHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public deleteAfterWarningDialog(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # I

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$3;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1126
    return-void
.end method

.method public exportAfterWarningDialog(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # I

    .prologue
    .line 1059
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1078
    return-void
.end method

.method public exportAfterWarningDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1082
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$2;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1101
    return-void
.end method

.method public onAllDataDeleted()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    .line 1051
    return-void
.end method

.method public onCancelAction()V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1046
    return-void
.end method

.method public onCopyAction(Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "selectedInfoHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const v4, 0x7f0e02cc

    const v5, 0x7f0e03ff

    const v2, 0x7f0e007f

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I
    invoke-static {v0, v6}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$202(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;I)I

    .line 900
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->mSelectedInfoHashSet:Ljava/util/HashSet;

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_9

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isSIMEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v0

    if-nez v0, :cond_4

    .line 907
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0e02cb

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 911
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_3

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0e02ca

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 913
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v2, 0x7f0e03fe

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 919
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0e02cd

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 924
    :cond_5
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_6

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 926
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 936
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0e021f

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 941
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 945
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x136

    if-ne v0, v1, :cond_d

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isSIMEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 950
    :cond_a
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "vnd.sec.contact.sim2"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$400(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 956
    :cond_b
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDiskFull()Z

    move-result v0

    if-nez v0, :cond_c

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V

    # setter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$502(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$500(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 961
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0e00db

    const v2, 0x7f0e02cf

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->showAlertDialog(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 965
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_12

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isSIM2Enabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 969
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 970
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_f

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0e02ca

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 972
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v2, 0x7f0e03fe

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 978
    :cond_10
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_11

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 980
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 991
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_0

    .line 992
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isSIM2Enabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 993
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 995
    :cond_13
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$400(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 998
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1001
    :cond_14
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDiskFull()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1002
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V

    # setter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$502(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 1004
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$500(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1006
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const v1, 0x7f0e00db

    const v2, 0x7f0e02cf

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->showAlertDialog(Landroid/content/Context;II)V

    goto/16 :goto_0
.end method

.method public onDeleteAction(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "selectedInfoHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const v4, 0x7f0e03b5

    const v3, 0x7f0e03b1

    const/4 v2, 0x0

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x2

    # setter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$202(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;I)I

    .line 874
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->mSelectedInfoHashSet:Ljava/util/HashSet;

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isSIMEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 885
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x1c2

    if-ne v0, v1, :cond_1

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isSIM2Enabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 895
    :cond_1
    :goto_1
    return-void

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->deleteAfterWarningDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 891
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->deleteAfterWarningDialog(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public onMoveAction(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1040
    .local p1, "selectedInfoHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    return-void
.end method

.method public onOneDataInputed()V
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    .line 1056
    return-void
.end method

.method public showAlertDialog(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleId"    # I
    .param p3, "contentsId"    # I

    .prologue
    .line 1104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1106
    return-void
.end method
