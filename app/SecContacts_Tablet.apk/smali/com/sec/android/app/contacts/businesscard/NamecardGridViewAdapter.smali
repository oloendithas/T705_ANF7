.class public Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
.super Landroid/widget/CursorAdapter;
.source "NamecardGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;
    }
.end annotation


# static fields
.field public static final CALL_TYPE:I = 0x1

.field public static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field public static final CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x9

.field public static final EMAIL_TYPE:I = 0x3

.field public static final MMS_TYPE:I = 0x2

.field public static final NAMECARD_COMPANY_COLUMN_INDEX:I = 0x12

.field public static final NAMECARD_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field public static final NAMECARD_DISPLAY_NAME_COLUMN_INDEX:I = 0x1

.field public static final NAMECARD_HAS_EMAIL_COLUMN_INDEX:I = 0x10

.field public static final NAMECARD_HAS_PHONE_COLUMN_INDEX:I = 0xb

.field public static final NAMECARD_IS_PRIVATE_COLUMN_INDEX:I = 0xf

.field public static final NAMECARD_JOB_TITLE_COLUMN_INDEX:I = 0x13

.field public static final NAMECARD_LOOKUP_KEY_COLUMN_INDEX:I = 0x9

.field public static final NAMECARD_ONLY_PHOTO_URI_COLUMN_INDEX:I = 0x14

.field public static final NAMECARD_PHOTO_URI_COLUMN_INDEX:I = 0x11

.field public static final TAG:Ljava/lang/String; = "NamecardGridViewAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectoryResultLimit:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMultiSelectionMode:Z

.field private mIsVoLTEEnabled:Z

.field private mSelectedContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 93
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mDirectoryResultLimit:I

    .line 99
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mIsMultiSelectionMode:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mIsVoLTEEnabled:Z

    .line 109
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mDeleteUris:Ljava/util/ArrayList;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method private bindHeaderView(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    .line 242
    const v4, 0x7f02071c

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    const v4, 0x7f09010e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 245
    .local v3, "labelTextView":Landroid/widget/TextView;
    const v4, 0x7f0902ce

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 246
    .local v2, "displayNameTextView":Landroid/widget/TextView;
    const v4, 0x7f0e01b4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 247
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    const v4, 0x7f0902cd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 253
    .local v1, "countText":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 254
    .local v0, "count":I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    iget v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mDirectoryResultLimit:I

    if-lt v0, v4, :cond_2

    .line 260
    iget-object v4, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0e008b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mDirectoryResultLimit:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :goto_1
    return-void

    .line 257
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 263
    :cond_2
    const v4, 0x7f0e008c

    const v5, 0x7f100003

    invoke-virtual {p0, v0, v4, v5}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->getQuantityText(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private buildDialog(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 4
    .param p2, "type"    # I
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "possibleActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 505
    .local v1, "dataList":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v3, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$4;

    invoke-direct {v3, p0, p2, p1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$4;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 541
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 544
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 545
    .local v2, "result":Landroid/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 546
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 547
    return-void
.end method

.method private setButtonEvent2(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cache"    # Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 310
    const/16 v9, 0xb

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 311
    .local v3, "hasPhone":I
    const/16 v9, 0x10

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 313
    .local v2, "hasEmail":I
    const/4 v9, 0x0

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 314
    .local v0, "contactId":I
    const/16 v9, 0x9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 316
    .local v7, "lookupKey":Ljava/lang/String;
    int-to-long v9, v0

    invoke-static {v9, v10, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 317
    .local v8, "lookupUri":Landroid/net/Uri;
    const-string v9, "data"

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 319
    .local v1, "dataUri":Landroid/net/Uri;
    if-lez v3, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x1

    .line 320
    .local v6, "isPhonePossible":Z
    :goto_0
    if-lez v3, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x1

    .line 322
    .local v5, "isMMSPossible":Z
    :goto_1
    if-lez v2, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEmailAvailable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    .line 324
    .local v4, "isEmailPossible":Z
    :goto_2
    if-eqz v6, :cond_3

    .line 325
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 327
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;

    invoke-direct {v10, p0, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$1;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :goto_3
    if-eqz v5, :cond_5

    .line 376
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_4

    .line 378
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :goto_4
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 383
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;

    invoke-direct {v10, p0, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$2;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    :goto_5
    if-eqz v4, :cond_7

    .line 442
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_6

    .line 444
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :goto_6
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 449
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    new-instance v10, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;

    invoke-direct {v10, p0, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$3;-><init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    :goto_7
    return-void

    .line 319
    .end local v4    # "isEmailPossible":Z
    .end local v5    # "isMMSPossible":Z
    .end local v6    # "isPhonePossible":Z
    :cond_0
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 320
    .restart local v6    # "isPhonePossible":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 322
    .restart local v5    # "isMMSPossible":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 372
    .restart local v4    # "isEmailPossible":Z
    :cond_3
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 380
    :cond_4
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 437
    :cond_5
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 446
    :cond_6
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 495
    :cond_7
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    iget-object v9, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;

    .line 151
    .local v1, "cache":Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;
    move-object/from16 v6, p1

    .line 154
    .local v6, "item":Landroid/view/View;
    const/16 v12, 0x14

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "photoUriString":Ljava/lang/String;
    if-nez v11, :cond_2

    const/4 v10, 0x0

    .line 156
    .local v10, "photoUri":Landroid/net/Uri;
    :goto_0
    iget-object v12, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v9

    .line 157
    .local v9, "photoManager":Lcom/android/contacts/ContactPhotoManager;
    if-eqz v9, :cond_0

    .line 158
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mImage:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v10, v13}, Lcom/android/contacts/ContactPhotoManager;->loadNamecardDetailPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V

    .line 160
    :cond_0
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mImage:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f0e0510

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "displayName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 164
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    const/16 v12, 0x12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "companyName":Ljava/lang/String;
    const/16 v12, 0x13

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "jobTitle":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 171
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :goto_1
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setClickable(Z)V

    .line 179
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setFocusable(Z)V

    .line 180
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    iget-boolean v12, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mIsMultiSelectionMode:Z

    if-eqz v12, :cond_5

    .line 183
    iget-object v12, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mSelectedContactIds:Ljava/util/ArrayList;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 186
    .local v5, "isActivated":Z
    invoke-virtual {v6, v5}, Landroid/view/View;->setActivated(Z)V

    .line 187
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 194
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v12, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 195
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mPushState:Landroid/view/View;

    const v13, 0x7f0b002a

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 238
    .end local v5    # "isActivated":Z
    :goto_2
    return-void

    .line 155
    .end local v2    # "companyName":Ljava/lang/String;
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v7    # "jobTitle":Ljava/lang/String;
    .end local v9    # "photoManager":Lcom/android/contacts/ContactPhotoManager;
    .end local v10    # "photoUri":Landroid/net/Uri;
    :cond_2
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_0

    .line 173
    .restart local v2    # "companyName":Ljava/lang/String;
    .restart local v4    # "displayName":Ljava/lang/String;
    .restart local v7    # "jobTitle":Ljava/lang/String;
    .restart local v9    # "photoManager":Lcom/android/contacts/ContactPhotoManager;
    .restart local v10    # "photoUri":Landroid/net/Uri;
    :cond_3
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v13, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    move-object v12, v7

    :goto_3
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    move-object v12, v2

    goto :goto_3

    .line 199
    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/view/View;->setActivated(Z)V

    .line 200
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 202
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 203
    .local v8, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    const v13, 0x101030e

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v8, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 205
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mPushState:Landroid/view/View;

    iget v13, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 207
    const-string v3, ""

    .line 208
    .local v3, "descriptionString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 209
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 212
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    :cond_7
    :goto_4
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mTextArea:Landroid/view/View;

    invoke-virtual {v12, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mTextArea:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->isVoLTEEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 223
    const-string v12, "feature_kor"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 224
    const-string v12, "feature_skt"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 225
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v13, 0x7f0205f9

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    :cond_8
    :goto_5
    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->setButtonEvent2(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;Landroid/database/Cursor;)V

    goto/16 :goto_2

    .line 214
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 215
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 226
    :cond_a
    const-string v12, "feature_kt"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 227
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v13, 0x7f0205f6

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 228
    :cond_b
    const-string v12, "feature_lgt"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 229
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v13, 0x7f0205f7

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 232
    :cond_c
    iget-object v12, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    const v13, 0x7f0205f8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5
.end method

.method public getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 558
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 559
    .local v0, "contactId":J
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public getDeleteUris()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v5, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 574
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 575
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 576
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 577
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    .line 578
    .local v0, "contactId":J
    iget-object v5, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 579
    const/16 v5, 0x9

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "lookupKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mDeleteUris:Ljava/util/ArrayList;

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    .end local v0    # "contactId":J
    .end local v4    # "lookupKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 585
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mDeleteUris:Ljava/util/ArrayList;

    return-object v5
.end method

.method public getQuantityText(III)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "zeroResourceId"    # I
    .param p3, "pluralResourceId"    # I

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isVoLTEEnabled()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mIsVoLTEEnabled:Z

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 280
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04019e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 281
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;

    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v5}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;-><init>(Landroid/content/Context;Z)V

    .line 283
    .local v0, "cache":Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;
    const v2, 0x7f0903a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mPushState:Landroid/view/View;

    .line 284
    const v2, 0x7f09018d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 285
    const v2, 0x7f0903a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mImage:Landroid/widget/ImageView;

    .line 286
    const v2, 0x7f0903a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mTextArea:Landroid/view/View;

    .line 287
    const v2, 0x7f09010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mDisplayName:Landroid/widget/TextView;

    .line 288
    const v2, 0x7f090203

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCompany:Landroid/widget/TextView;

    .line 290
    const v2, 0x7f09039a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    .line 292
    const v2, 0x7f090144

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSDivider:Landroid/view/View;

    .line 293
    const v2, 0x7f0903a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    .line 295
    const v2, 0x7f090146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailDivider:Landroid/view/View;

    .line 296
    const v2, 0x7f0903aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mCallButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 300
    iget-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mMMSButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 301
    iget-object v2, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter$ViewCache;->mEmailButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 304
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    return-object v1
.end method

.method public setMultiSelectionMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 564
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mIsMultiSelectionMode:Z

    .line 565
    return-void
.end method

.method public setSelectedContactIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "selectedContactId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mSelectedContactIds:Ljava/util/ArrayList;

    .line 569
    return-void
.end method

.method public setVolteEnabled(Z)V
    .locals 0
    .param p1, "isVolteEnable"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;->mIsVoLTEEnabled:Z

    .line 551
    return-void
.end method
