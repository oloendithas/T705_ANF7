.class Lcom/android/contacts/list/NamecardViewerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "NamecardViewerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/NamecardViewerAdapter$ActionDescription;,
        Lcom/android/contacts/list/NamecardViewerAdapter$ActionDescriptionAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsVoLTEEnable:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    .line 63
    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mContext:Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mIsVoLTEEnable:Z

    .line 71
    iput-object p1, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    .line 73
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/NamecardViewerAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardViewerAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/NamecardViewerAdapter;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardViewerAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/NamecardViewerAdapter;->buildDialog(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private bindDatas(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 153
    const v20, 0x7f09010a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 154
    .local v15, "mDisplayName":Landroid/widget/TextView;
    const v20, 0x7f090203

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 156
    .local v14, "mCompany":Landroid/widget/TextView;
    const v20, 0x7f09039a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 157
    .local v13, "mCallButton":Landroid/widget/ImageView;
    const v20, 0x7f0903a9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 158
    .local v18, "mMMSButton":Landroid/widget/ImageView;
    const v20, 0x7f0903aa

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 160
    .local v16, "mEmailButton":Landroid/widget/ImageView;
    const v20, 0x7f090144

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 161
    .local v19, "mMMSDivider":Landroid/view/View;
    const v20, 0x7f090146

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 163
    .local v17, "mEmailDivider":Landroid/view/View;
    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/16 v20, 0xb

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 166
    .local v6, "hasPhone":I
    const/16 v20, 0x10

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 168
    .local v5, "hasEmail":I
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 169
    .local v3, "contactId":I
    const/16 v20, 0x9

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 171
    .local v11, "lookupKey":Ljava/lang/String;
    int-to-long v0, v3

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v11}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 172
    .local v12, "lookupUri":Landroid/net/Uri;
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 174
    .local v4, "dataUri":Landroid/net/Uri;
    const/16 v20, 0x12

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "companyName":Ljava/lang/String;
    const/16 v20, 0x13

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, "jobTitle":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 179
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .end local v10    # "jobTitle":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/NamecardViewerAdapter;->mIsVoLTEEnable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 186
    const-string v20, "feature_kor"

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 187
    const-string v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 188
    const v20, 0x7f0205f9

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    :cond_0
    :goto_1
    if-lez v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/NamecardViewerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/4 v9, 0x1

    .line 202
    .local v9, "isPhonePossible":Z
    :goto_2
    if-lez v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/NamecardViewerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/4 v8, 0x1

    .line 203
    .local v8, "isMMSPossible":Z
    :goto_3
    if-lez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/NamecardViewerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEmailAvailable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/4 v7, 0x1

    .line 205
    .local v7, "isEmailPossible":Z
    :goto_4
    if-eqz v9, :cond_a

    .line 206
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    new-instance v20, Lcom/android/contacts/list/NamecardViewerAdapter$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/list/NamecardViewerAdapter$2;-><init>(Lcom/android/contacts/list/NamecardViewerAdapter;Landroid/net/Uri;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :goto_5
    if-eqz v8, :cond_c

    .line 245
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_b

    .line 247
    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :goto_6
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    new-instance v20, Lcom/android/contacts/list/NamecardViewerAdapter$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/list/NamecardViewerAdapter$3;-><init>(Lcom/android/contacts/list/NamecardViewerAdapter;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    :goto_7
    if-eqz v7, :cond_e

    .line 295
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_d

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_d

    .line 297
    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 302
    new-instance v20, Lcom/android/contacts/list/NamecardViewerAdapter$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/list/NamecardViewerAdapter$4;-><init>(Lcom/android/contacts/list/NamecardViewerAdapter;Landroid/net/Uri;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :goto_9
    return-void

    .line 181
    .end local v7    # "isEmailPossible":Z
    .end local v8    # "isMMSPossible":Z
    .end local v9    # "isPhonePossible":Z
    .restart local v10    # "jobTitle":Ljava/lang/String;
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .end local v10    # "jobTitle":Ljava/lang/String;
    :goto_a
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .restart local v10    # "jobTitle":Ljava/lang/String;
    :cond_2
    move-object v10, v2

    goto :goto_a

    .line 189
    .end local v10    # "jobTitle":Ljava/lang/String;
    :cond_3
    const-string v20, "feature_kt"

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 190
    const v20, 0x7f0205f6

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 191
    :cond_4
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 192
    const v20, 0x7f0205f7

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 195
    :cond_5
    const v20, 0x7f0205f8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 198
    :cond_6
    const v20, 0x7f020679

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 201
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 202
    .restart local v9    # "isPhonePossible":Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 203
    .restart local v8    # "isMMSPossible":Z
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 241
    .restart local v7    # "isEmailPossible":Z
    :cond_a
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 249
    :cond_b
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 290
    :cond_c
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 299
    :cond_d
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 335
    :cond_e
    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method private buildDialog(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "possibleActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/contacts/list/NamecardViewerAdapter$ActionDescriptionAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/list/NamecardViewerAdapter$ActionDescriptionAdapter;-><init>(Lcom/android/contacts/list/NamecardViewerAdapter;Ljava/util/ArrayList;)V

    new-instance v2, Lcom/android/contacts/list/NamecardViewerAdapter$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/contacts/list/NamecardViewerAdapter$5;-><init>(Lcom/android/contacts/list/NamecardViewerAdapter;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    iget-object v1, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040685

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 374
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 375
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 148
    const-string v0, "1"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 86
    const/4 v3, 0x0

    .line 88
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge p2, v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 91
    iget-object v4, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401a1

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 92
    const v4, 0x7f0903a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 95
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x14

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "photoUriString":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 97
    .local v1, "photoUri":Landroid/net/Uri;
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/contacts/ContactPhotoManager;->loadNamecardDetailPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V

    .line 98
    iget-object v4, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/list/NamecardViewerAdapter;->bindDatas(Landroid/view/View;Landroid/database/Cursor;)V

    .line 100
    new-instance v4, Lcom/android/contacts/list/NamecardViewerAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/NamecardViewerAdapter$1;-><init>(Lcom/android/contacts/list/NamecardViewerAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    invoke-virtual {p1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 115
    .end local v0    # "iv":Landroid/widget/ImageView;
    .end local v1    # "photoUri":Landroid/net/Uri;
    .end local v2    # "photoUriString":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 96
    .restart local v0    # "iv":Landroid/widget/ImageView;
    .restart local v2    # "photoUriString":Ljava/lang/String;
    .restart local p1    # "pager":Landroid/view/View;
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 125
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 138
    const-string v0, "1"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 141
    const-string v0, "1"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mCursor:Landroid/database/Cursor;

    .line 130
    return-void
.end method

.method public setVolteEnabled(Z)V
    .locals 0
    .param p1, "isVolteEnable"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/android/contacts/list/NamecardViewerAdapter;->mIsVoLTEEnable:Z

    .line 379
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 145
    const-string v0, "1"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method
