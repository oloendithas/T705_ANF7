.class Lcom/android/contacts/editor/TextFieldsEditorView$4;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

.field totalTextByte:I

.field final synthetic val$column:Ljava/lang/String;

.field final synthetic val$field:Lcom/android/contacts/model/AccountType$EditField;

.field final synthetic val$fieldView:Landroid/widget/EditText;

.field final synthetic val$kind:Lcom/android/contacts/model/DataKind;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/widget/EditText;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditField;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$fieldView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$kind:Lcom/android/contacts/model/DataKind;

    iput-object p4, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$field:Lcom/android/contacts/model/AccountType$EditField;

    iput-object p5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$column:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->totalTextByte:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 671
    sget-boolean v5, Lcom/android/contacts/editor/TextFieldsEditorView;->mAddaContactTutorialShouldSave:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$700(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v5}, Lcom/android/contacts/activities/ContactEditorActivity;->isTutorialMode()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->getInputType()I

    move-result v5

    const/16 v6, 0x2061

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$kind:Lcom/android/contacts/model/DataKind;

    iget-object v5, v5, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$kind:Lcom/android/contacts/model/DataKind;

    iget-object v5, v5, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "#displayName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$field:Lcom/android/contacts/model/AccountType$EditField;

    iget-object v5, v5, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    const-string v6, "data1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 677
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$800(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v5, v7}, Lcom/android/contacts/activities/ContactEditorActivity;->setAddaContactTutorialSaveMode(I)V

    .line 679
    sput-boolean v8, Lcom/android/contacts/editor/TextFieldsEditorView;->mAddaContactTutorialShouldSave:Z

    .line 682
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->getInputType()I

    move-result v5

    if-ne v5, v7, :cond_f

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$900(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v5

    if-eq v5, v8, :cond_1

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v5

    if-ne v5, v8, :cond_f

    .line 684
    :cond_1
    const/4 v3, 0x0

    .line 685
    .local v3, "length":I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v8, :cond_9

    .line 686
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1100(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 687
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_6

    .line 700
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v5

    if-le v5, v3, :cond_2

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 702
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 703
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v3

    .line 705
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$fieldView:Landroid/widget/EditText;

    new-array v6, v8, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 769
    .end local v3    # "length":I
    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_5

    const-string v5, "#phoneticName"

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$kind:Lcom/android/contacts/model/DataKind;

    iget-object v6, v6, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "#phoneticName"

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$column:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 774
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const-string v6, "data7"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const-string v6, "data8"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const-string v6, "data9"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$column:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return-void

    .line 688
    .restart local v3    # "length":I
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1200(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    const-string v6, "vnd.sec.contact.sim2"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 693
    :goto_2
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v5

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    :cond_7
    goto/16 :goto_0

    .line 688
    :cond_8
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    goto :goto_2

    .line 709
    :cond_9
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1500(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v3

    .line 710
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_c

    .line 723
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v5

    if-le v5, v3, :cond_a

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v3

    .line 725
    :cond_a
    :goto_3
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 726
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v3

    .line 728
    :cond_b
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$fieldView:Landroid/widget/EditText;

    new-array v6, v8, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_1

    .line 711
    :cond_c
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1600(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    const-string v6, "vnd.sec.contact.sim2"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v3

    .line 716
    :goto_4
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v5

    if-lez v5, :cond_d

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mExtFullyOccupiedCaseLen:I
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1400(Lcom/android/contacts/editor/TextFieldsEditorView;)I

    move-result v3

    :cond_d
    goto :goto_3

    .line 711
    :cond_e
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1700(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v3

    goto :goto_4

    .line 732
    .end local v3    # "length":I
    :cond_f
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIMAccount:Z
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$900(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v5

    if-eq v5, v8, :cond_10

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v5

    if-ne v5, v8, :cond_4

    :cond_10
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$kind:Lcom/android/contacts/model/DataKind;

    iget-object v5, v5, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "#displayName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 733
    const/4 v4, 0x0

    .line 734
    .local v4, "maxByte":I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-nez v5, :cond_11

    .line 743
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v4

    .line 746
    :goto_5
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "after_text":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableKsc5601Encoding"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 749
    const-string v5, "KSC5601"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 750
    .local v2, "getbyte":[B
    array-length v5, v2

    iput v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->totalTextByte:I

    .line 761
    .end local v2    # "getbyte":[B
    :goto_6
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_4

    iget v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->totalTextByte:I

    if-le v5, v4, :cond_4

    .line 762
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-interface {p1, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 764
    .end local v0    # "after_text":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .line 735
    :cond_11
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->isSIM2Account:Z
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    const-string v6, "vnd.sec.contact.sim2"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(Ljava/lang/String;)I

    move-result v4

    :goto_7
    goto :goto_5

    :cond_12
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(Ljava/lang/String;)I

    move-result v4

    goto :goto_7

    .line 752
    .restart local v0    # "after_text":Ljava/lang/String;
    :cond_13
    :try_start_1
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->val$fieldView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/contacts/editor/TextFieldsEditorView;->chkKorean(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1800(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 753
    const-string v5, "ISO-10646-UCS-2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 754
    .restart local v2    # "getbyte":[B
    array-length v5, v2

    iput v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->totalTextByte:I

    goto :goto_6

    .line 756
    .end local v2    # "getbyte":[B
    :cond_14
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$1900(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v1

    .line 757
    .local v1, "getByte":[B
    array-length v5, v1

    iput v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$4;->totalTextByte:I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 783
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 787
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p2, :cond_4

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xd7a3

    if-gt v0, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xac00

    if-ge v0, v1, :cond_4

    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x11ff

    if-gt v0, v1, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x1100

    if-ge v0, v1, :cond_4

    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xd7fb

    if-gt v0, v1, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xd7b0

    if-ge v0, v1, :cond_4

    :cond_2
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xa97c

    if-gt v0, v1, :cond_3

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xa960

    if-ge v0, v1, :cond_4

    :cond_3
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x318e

    if-gt v0, v1, :cond_4

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3130

    if-lt v0, v1, :cond_4

    .line 795
    :cond_4
    return-void
.end method
