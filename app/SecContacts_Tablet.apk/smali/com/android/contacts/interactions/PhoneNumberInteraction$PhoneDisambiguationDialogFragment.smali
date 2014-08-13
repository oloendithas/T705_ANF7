.class public Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;
.super Landroid/app/DialogFragment;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneDisambiguationDialogFragment"
.end annotation


# static fields
.field private static final ARG_CALL_ORIGIN:Ljava/lang/String; = "callOrigin"

.field private static final ARG_INTERACTION_TYPE:Ljava/lang/String; = "interactionType"

.field private static final ARG_PHONE_LIST:Ljava/lang/String; = "phoneList"


# instance fields
.field private mCallOrigin:Ljava/lang/String;

.field private mCurrentTab:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonesAdapter:Landroid/widget/ListAdapter;

.field private mPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 202
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 214
    iput v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCurrentTab:I

    .line 215
    iput v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPos:I

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPos:I

    return p1
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "interactionType"    # Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;
    .param p3, "callOrigin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;>;"
    new-instance v2, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

    invoke-direct {v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;-><init>()V

    .line 221
    .local v2, "fragment":Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "phoneList"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 223
    const-string v3, "interactionType"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 224
    const-string v3, "callOrigin"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 227
    :try_start_0
    # getter for: Lcom/android/contacts/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 306
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 307
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    iget-object v4, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p2, :cond_2

    if-ltz p2, :cond_2

    .line 308
    iget-object v4, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    .line 309
    .local v2, "phoneItem":Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    const v4, 0x7f0901f7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 310
    .local v1, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    invoke-static {v4, v5, v6}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 314
    .local v3, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 317
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v2, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    iget-object v7, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallOrigin:Ljava/lang/String;

    # invokes: Lcom/android/contacts/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->access$300(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;)V

    .line 323
    .end local v1    # "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v2    # "phoneItem":Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/contacts/CallContactActivity;

    if-eqz v4, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 326
    :cond_1
    return-void

    .line 320
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 236
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "phoneList"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "interactionType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    iput-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "callOrigin"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallOrigin:Ljava/lang/String;

    .line 241
    new-instance v5, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;

    iget-object v6, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    iget-object v7, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    invoke-direct {v5, v0, v6, v7}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;)V

    iput-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhonesAdapter:Landroid/widget/ListAdapter;

    .line 242
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 243
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0401ee

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 244
    .local v4, "setPrimaryView":Landroid/view/View;
    const v5, 0x7f0901f7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 245
    .local v1, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v5, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;-><init>(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhonesAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    sget-object v7, Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;->SMS:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    if-ne v5, v7, :cond_0

    const v5, 0x7f0e010d

    :goto_0
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$3;

    invoke-direct {v7, p0, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$3;-><init>(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$2;-><init>(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 282
    .local v2, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 283
    iget-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 284
    iget-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v5

    .line 259
    .end local v2    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_0
    const v5, 0x7f0e010b

    goto :goto_0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 289
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 290
    iget v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPos:I

    if-ltz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPos:I

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 292
    iget-object v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 293
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPos:I

    .line 294
    const/4 v1, 0x1

    .line 302
    :goto_0
    return v1

    .line 296
    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 298
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/contacts/CallContactActivity;

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 302
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 331
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 333
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_1

    .line 334
    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentTab()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCurrentTab:I

    .line 339
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 340
    return-void

    .line 335
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_0

    .line 336
    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getActivityTabState()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCurrentTab:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 344
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCurrentTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 346
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentTab()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCurrentTab:I

    if-eq v1, v2, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->dismiss()V

    .line 354
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 349
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getActivityTabState()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCurrentTab:I

    if-eq v1, v2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->dismiss()V

    goto :goto_0
.end method
