.class public Lcom/android/contacts/editor/RawContactReadOnlyEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactReadOnlyEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;
    }
.end annotation


# instance fields
.field private mAccountContainer:Landroid/view/View;

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountName:Ljava/lang/String;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountType:Ljava/lang/String;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mDataSet:Ljava/lang/String;

.field private mEditExternallyButton:Landroid/widget/Button;

.field private mGeneral:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

.field private mName:Lcom/android/contacts/editor/StructuredNameEditorView;

.field private mPhotoStub:Landroid/view/View;

.field private mRawContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 11
    .param p1, "titleText"    # Ljava/lang/CharSequence;
    .param p2, "data"    # Ljava/lang/CharSequence;
    .param p3, "type"    # Ljava/lang/CharSequence;
    .param p4, "isFirstEntry"    # Z

    .prologue
    .line 292
    iget-object v7, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040178

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 293
    .local v3, "field":Landroid/view/View;
    const v7, 0x7f090020

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 295
    .local v2, "divider":Landroid/view/View;
    const v7, 0x7f0902d6

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, "addContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 297
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_0
    if-eqz p4, :cond_1

    .line 301
    const v7, 0x7f0902d5

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 302
    .local v5, "titleView":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .end local v5    # "titleView":Landroid/widget/TextView;
    :goto_0
    const v7, 0x7f090002

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 311
    .local v1, "dataView":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    const v7, 0x7f090153

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 313
    .local v6, "typeView":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 314
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 320
    return-void

    .line 306
    .end local v1    # "dataView":Landroid/widget/TextView;
    .end local v6    # "typeView":Landroid/widget/TextView;
    :cond_1
    const v7, 0x7f090366

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 307
    .local v4, "titleContainer":Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 308
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 316
    .end local v4    # "titleContainer":Landroid/view/View;
    .restart local v1    # "dataView":Landroid/widget/TextView;
    .restart local v6    # "typeView":Landroid/widget/TextView;
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getAlerttoneVisibility()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public getVibrationVisibility()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090410

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    new-instance v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;->onExternalEditorRequest(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;)V

    .line 346
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 105
    const v0, 0x7f090407

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mPhotoStub:Landroid/view/View;

    .line 107
    const v0, 0x7f09040f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    .line 108
    const v0, 0x7f090410

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f090411

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    .line 112
    const v0, 0x7f0902d8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    .line 113
    const v0, 0x7f09019b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f0902d9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0902da

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 116
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    .line 95
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 17
    .param p1, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "type"    # Lcom/android/contacts/model/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 130
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v16

    .line 137
    .local v16, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v2, "account_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    .line 138
    const-string v2, "account_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    .line 139
    const-string v2, "data_set"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    .line 141
    if-eqz p4, :cond_8

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "vnd.sec.contact.phone"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 143
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v5, 0x7f0e0206

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 198
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 206
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 207
    .local v3, "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v3, :cond_12

    .line 208
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 209
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    if-eqz v2, :cond_10

    const/4 v13, 0x1

    .line 210
    .local v13, "hasPhotoEditor":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setHasPhotoEditor(Z)V

    .line 211
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 212
    .local v4, "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mPhotoStub:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .end local v4    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13    # "hasPhotoEditor":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 220
    const-string v2, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const v5, 0x7f0b011d

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_4
    :goto_5
    new-instance v11, Lcom/android/contacts/model/FallbackAccountType;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "vnd.sec.contact.phone"

    invoke-direct {v11, v2, v5}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    .local v11, "accountType":Lcom/android/contacts/model/FallbackAccountType;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 246
    .local v7, "primaryValues":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string v2, "#displayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    const/4 v9, 0x1

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEnabled(Z)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/LabeledEditorView;->setDeletable(Z)V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setExpansionViewEnable(Z)V

    .line 256
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040176

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/editor/KindSectionView;

    .line 260
    .local v15, "section":Lcom/android/contacts/editor/KindSectionView;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v11, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v14

    .line 262
    .local v14, "phoneKind":Lcom/android/contacts/model/DataKind;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 263
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v14, v0, v2, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setDeleteIconEnable(Z)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 270
    .end local v14    # "phoneKind":Lcom/android/contacts/model/DataKind;
    .end local v15    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_5
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040176

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/editor/KindSectionView;

    .line 274
    .restart local v15    # "section":Lcom/android/contacts/editor/KindSectionView;
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v11, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v12

    .line 276
    .local v12, "emailKind":Lcom/android/contacts/model/DataKind;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 277
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v12, v0, v2, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 278
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/contacts/editor/KindSectionView;->setDeleteIconEnable(Z)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 283
    .end local v12    # "emailKind":Lcom/android/contacts/model/DataKind;
    .end local v15    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_14

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 146
    .end local v3    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v7    # "primaryValues":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v11    # "accountType":Lcom/android/contacts/model/FallbackAccountType;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 147
    .local v11, "accountType":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0207

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v11, v8, v9

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 152
    .end local v11    # "accountType":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 153
    .restart local v11    # "accountType":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x7f0e012f

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 156
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 157
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 159
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f0e018b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v11, v8, v9

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 160
    :cond_b
    const-string v2, "vnd.sec.contact.phone_personal"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0130

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 163
    :cond_c
    const-string v2, "vnd.sec.contact.phone_knox"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0131

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 166
    :cond_d
    const-string v2, "vnd.sec.contact.phone_knox2"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0132

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_6

    .line 179
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f0e018c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 186
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 209
    .end local v11    # "accountType":Ljava/lang/CharSequence;
    .restart local v3    # "kind":Lcom/android/contacts/model/DataKind;
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 212
    .restart local v4    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v13    # "hasPhotoEditor":Z
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 215
    .end local v4    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13    # "hasPhotoEditor":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mPhotoStub:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 230
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    new-instance v5, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 286
    .restart local v7    # "primaryValues":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .local v11, "accountType":Lcom/android/contacts/model/FallbackAccountType;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
