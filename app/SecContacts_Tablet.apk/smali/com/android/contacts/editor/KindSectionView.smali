.class public Lcom/android/contacts/editor/KindSectionView;
.super Landroid/widget/LinearLayout;
.source "KindSectionView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KindSectionView"


# instance fields
.field private alertDelete:Landroid/app/AlertDialog;

.field private mAddContainer:Landroid/view/View;

.field private mEditors:Landroid/view/ViewGroup;

.field private mEditorsPaddingBottom:Landroid/view/View;

.field protected mFocusOrderChangeListener:Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKind:Lcom/android/contacts/model/DataKind;

.field private mReadOnly:Z

.field private final mRunWhenWindowFocused:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleString:Ljava/lang/String;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/KindSectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/KindSectionView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/KindSectionView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/KindSectionView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/KindSectionView;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/KindSectionView;->reBuildEditors(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/KindSectionView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/KindSectionView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateLayoutPadding()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/KindSectionView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/KindSectionView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/KindSectionView;->runWhenWindowFocused(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/KindSectionView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/KindSectionView;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;
    .locals 10
    .param p1, "entry"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget v2, v2, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 326
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 328
    instance-of v1, v7, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 329
    check-cast v0, Lcom/android/contacts/editor/Editor;

    .line 330
    .local v0, "editor":Lcom/android/contacts/editor/Editor;
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-boolean v4, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 331
    invoke-interface {v0, p0}, Lcom/android/contacts/editor/Editor;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 332
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 333
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "vnd.sec.contact.sim"

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    invoke-interface {v0, v9}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    .line 365
    .end local v0    # "editor":Lcom/android/contacts/editor/Editor;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 366
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/KindSectionView;->reBuildEditors(I)V

    .line 367
    return-object v7

    .line 319
    .end local v7    # "view":Landroid/view/View;
    :catch_0
    move-exception v6

    .line 320
    .local v6, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot allocate editor with layout resource ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget v3, v3, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for MIME type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v3, v3, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v0    # "editor":Lcom/android/contacts/editor/Editor;
    .restart local v7    # "view":Landroid/view/View;
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-nez v1, :cond_3

    .line 347
    const-string v1, "vnd.android.cursor.item/nickname"

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.android.cursor.item/note"

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.android.cursor.item/sip_address"

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 351
    invoke-interface {v0, v9}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    goto/16 :goto_0

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "vnd.sec.contact.sim2"

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 343
    invoke-interface {v0, v9}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    goto/16 :goto_0

    .line 345
    :cond_4
    iget-boolean v1, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v1, :cond_5

    move v1, v8

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    goto/16 :goto_0

    :cond_5
    move v1, v9

    goto :goto_1

    .line 353
    :cond_6
    invoke-interface {v0, v8}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    goto/16 :goto_0

    .line 356
    :cond_7
    const-string v1, "vnd.android.cursor.item/nickname"

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "vnd.android.cursor.item/note"

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "vnd.android.cursor.item/sip_address"

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 360
    invoke-interface {v0, v9}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    goto/16 :goto_0

    .line 362
    :cond_9
    invoke-interface {v0, v8}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    goto/16 :goto_0
.end method

.method private getEmptyEditors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v0, "emptyEditorViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 497
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    move-object v3, v2

    .line 498
    check-cast v3, Lcom/android/contacts/editor/Editor;

    invoke-interface {v3}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 499
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method private hasEmptyEditor()Z
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->getEmptyEditors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmptyNoop(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 6
    .param p1, "item"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .prologue
    const/4 v5, 0x0

    .line 391
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isNoop()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 398
    :goto_0
    return v4

    .line 392
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 393
    .local v1, "fieldCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 394
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v0, v4, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 395
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    .line 393
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 398
    .end local v0    # "column":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private postWhenWindowFocused(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 571
    new-instance v0, Lcom/android/contacts/editor/KindSectionView$4;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/editor/KindSectionView$4;-><init>(Lcom/android/contacts/editor/KindSectionView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 577
    return-void
.end method

.method private reBuildEditors(I)V
    .locals 4
    .param p1, "childCountLimit"    # I

    .prologue
    .line 377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 378
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, "childView":Landroid/view/View;
    instance-of v2, v0, Lcom/android/contacts/editor/EventFieldEditorView;

    if-eqz v2, :cond_1

    .line 380
    check-cast v0, Lcom/android/contacts/editor/EventFieldEditorView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildValues()V

    .line 377
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .restart local v0    # "childView":Landroid/view/View;
    :cond_1
    instance-of v2, v0, Lcom/android/contacts/editor/LabeledEditorView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/relation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    check-cast v0, Lcom/android/contacts/editor/LabeledEditorView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildValues()V

    goto :goto_1

    .line 385
    :cond_2
    return-void
.end method

.method private runWhenWindowFocused(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateEmptyEditors()V
    .locals 5

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->getEmptyEditors()Ljava/util/List;

    move-result-object v1

    .line 480
    .local v1, "emptyEditors":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 481
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 484
    .local v0, "emptyEditorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 485
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 489
    .end local v0    # "emptyEditorView":Landroid/view/View;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private updateLayoutPadding()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditorsPaddingBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditorsPaddingBottom:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditorsPaddingBottom:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSectionVisible()V
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 403
    return-void

    .line 402
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addItem(Z)V
    .locals 5
    .param p1, "requestFocus"    # Z

    .prologue
    .line 580
    const/4 v2, 0x0

    .line 582
    .local v2, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-boolean v3, v3, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v3, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    if-nez v2, :cond_2

    .line 599
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v3, v4}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 602
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;

    move-result-object v1

    .line 603
    .local v1, "newField":Landroid/view/View;
    if-eqz p1, :cond_3

    instance-of v3, v1, Lcom/android/contacts/editor/Editor;

    if-eqz v3, :cond_3

    .line 604
    new-instance v3, Lcom/android/contacts/editor/KindSectionView$5;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/editor/KindSectionView$5;-><init>(Lcom/android/contacts/editor/KindSectionView;Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/editor/KindSectionView;->postWhenWindowFocused(Ljava/lang/Runnable;)V

    .line 622
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateLayoutPadding()V

    .line 627
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 630
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateSectionVisible()V

    .line 632
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 633
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mFocusOrderChangeListener:Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

    if-eqz v3, :cond_0

    .line 638
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mFocusOrderChangeListener:Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

    invoke-interface {v3}, Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;->onFocusOrderChanged()V

    goto :goto_0
.end method

.method public getEditorCount()I
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getKind()Lcom/android/contacts/model/DataKind;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public isDatePickerDialogShowing()Z
    .locals 4

    .prologue
    .line 662
    const/4 v2, 0x0

    .line 663
    .local v2, "isShowing":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 664
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 665
    .local v0, "childView":Landroid/view/View;
    instance-of v3, v0, Lcom/android/contacts/editor/EventFieldEditorView;

    if-eqz v3, :cond_1

    .line 666
    check-cast v0, Lcom/android/contacts/editor/EventFieldEditorView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/contacts/editor/EventFieldEditorView;->isDatePickerDialogShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    const/4 v2, 0x1

    .line 672
    :cond_0
    return v2

    .line 663
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 519
    .local v1, "view":Landroid/view/View;
    check-cast v1, Lcom/android/contacts/editor/Editor;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 520
    const/4 v2, 0x0

    .line 523
    :goto_1
    return v2

    .line 517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    return v0
.end method

.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 5
    .param p1, "editor"    # Lcom/android/contacts/editor/Editor;

    .prologue
    .line 175
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_PromptToDeleteFieldDuringEdit"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->alertDelete:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->alertDelete:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 180
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->alertDelete:Landroid/app/AlertDialog;

    .line 183
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e005f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0060

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/editor/KindSectionView$3;

    invoke-direct {v4, p0, p1}, Lcom/android/contacts/editor/KindSectionView$3;-><init>(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/Editor;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/contacts/editor/KindSectionView$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/editor/KindSectionView$2;-><init>(Lcom/android/contacts/editor/KindSectionView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->alertDelete:Landroid/app/AlertDialog;

    .line 202
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->alertDelete:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 220
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    .line 206
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/contacts/editor/KindSectionView;->reBuildEditors(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 209
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateLayoutPadding()V

    .line 211
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 212
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mFocusOrderChangeListener:Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

    if-eqz v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mFocusOrderChangeListener:Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

    invoke-interface {v2}, Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;->onFocusOrderChanged()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 127
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 129
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    .line 131
    const v0, 0x7f0902d5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f090367

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 133
    const v0, 0x7f090368

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditorsPaddingBottom:Landroid/view/View;

    .line 148
    const v0, 0x7f0902d6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/KindSectionView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/KindSectionView$1;-><init>(Lcom/android/contacts/editor/KindSectionView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method public onRequest(I)V
    .locals 1
    .param p1, "request"    # I

    .prologue
    .line 226
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 229
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 544
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 545
    if-eqz p1, :cond_1

    .line 546
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 547
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 549
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 551
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public rebuildFromState()V
    .locals 5

    .prologue
    .line 289
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 292
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v1

    .line 295
    .local v1, "hasEntries":Z
    if-eqz v1, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 298
    .local v0, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->isEmptyNoop(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;

    goto :goto_0

    .line 306
    .end local v0    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v1    # "hasEntries":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateLayoutPadding()V

    .line 307
    return-void
.end method

.method public removeEditorView()V
    .locals 5

    .prologue
    .line 651
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 652
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 653
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 654
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 655
    check-cast v2, Lcom/android/contacts/editor/Editor;

    .end local v2    # "view":Landroid/view/View;
    invoke-interface {v2}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    .line 652
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 659
    return-void
.end method

.method public removeLabelSection()V
    .locals 3

    .prologue
    .line 530
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 532
    .local v1, "view":Landroid/view/View;
    check-cast v1, Lcom/android/contacts/editor/Editor;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 535
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateLayoutPadding()V

    .line 536
    return-void
.end method

.method public setDeleteIconEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 277
    const v1, 0x7f0902e0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "deleteView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 282
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 103
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :goto_1
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setFocusOrderChangeListener(Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mFocusOrderChangeListener:Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

    .line 677
    return-void
.end method

.method public setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 5
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p3, "readOnly"    # Z
    .param p4, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const v4, 0x7f0902cf

    const/16 v3, 0x8

    const/4 v2, -0x1

    .line 232
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    .line 233
    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 234
    iput-boolean p3, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    .line 235
    iput-object p4, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 237
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 240
    iget v0, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-nez v0, :cond_3

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_4

    .line 263
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->rebuildFromState()V

    .line 264
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 265
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateSectionVisible()V

    .line 266
    return-void

    .line 240
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "vnd.sec.contact.sim2"

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTitleVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 273
    const v0, 0x7f090366

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 274
    return-void

    .line 273
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected updateAddFooterVisible()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 407
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v0, :cond_1

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_3

    .line 425
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-boolean v0, v0, Lcom/android/contacts/model/DataKind;->isList:Z

    if-eqz v0, :cond_5

    .line 433
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v0, :cond_2

    const-string v0, "vnd.sec.contact.sim2"

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 445
    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-boolean v0, v0, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v0, :cond_7

    .line 446
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 447
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 449
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 456
    :cond_7
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
