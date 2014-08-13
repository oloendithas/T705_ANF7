.class public Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;
.super Landroid/app/Dialog;
.source "MissedCallCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/MissedCallCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverDialog"
.end annotation


# instance fields
.field private mCallDetailDialog:Landroid/widget/LinearLayout;

.field private mContactBackgroundCover:Landroid/widget/ImageView;

.field private mContactDetailName:Landroid/widget/TextView;

.field private mCoverCancel:Landroid/widget/ImageButton;

.field private mCurrentCoverBackgroundColor:I

.field mDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private mListCount:I

.field private mMissedAdapter:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;

.field private mMissedList:Landroid/widget/ListView;

.field mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private mTitleName:Landroid/widget/TextView;

.field private mTitleTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;Landroid/content/Context;Ljava/lang/String;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uris"    # Ljava/lang/String;
    .param p4, "mCallDetails"    # [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 399
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    .line 400
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 393
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mListCount:I

    .line 394
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mMissedAdapter:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;

    .line 396
    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mCallDetailDialog:Landroid/widget/LinearLayout;

    .line 397
    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mCurrentCoverBackgroundColor:I

    .line 401
    # setter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$002(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;Landroid/content/Context;)Landroid/content/Context;

    .line 402
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 403
    const v1, 0x7f040195

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 406
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->getBackgroundColor()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mCurrentCoverBackgroundColor:I

    .line 408
    const v1, 0x7f090390

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mCallDetailDialog:Landroid/widget/LinearLayout;

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mCallDetailDialog:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mCallDetailDialog:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 413
    :cond_0
    const v1, 0x7f090396

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mContactBackgroundCover:Landroid/widget/ImageView;

    .line 414
    const v1, 0x7f090397

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mContactDetailName:Landroid/widget/TextView;

    .line 415
    const v1, 0x7f090398

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mMissedList:Landroid/widget/ListView;

    .line 416
    const v1, 0x7f090393

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mTitleName:Landroid/widget/TextView;

    .line 417
    const v1, 0x7f090394

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mTitleTime:Landroid/widget/TextView;

    .line 418
    const v1, 0x7f090395

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mCoverCancel:Landroid/widget/ImageButton;

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mCoverCancel:Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;-><init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    if-nez p4, :cond_1

    .line 440
    const-string v1, "MissedCallCover"

    const-string v2, "mCallDetails2 is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    return-void

    .line 443
    :cond_1
    aget-object v1, p4, v4

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 444
    array-length v1, p4

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mListCount:I

    .line 446
    array-length v1, p4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p4

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    .line 449
    if-nez v0, :cond_2

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    aget-object v2, p4, v4

    aput-object v2, v1, v4

    .line 455
    :goto_2
    const-string v1, "MissedCallCover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coverDialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p4, v2

    aput-object v2, v1, v0

    goto :goto_2

    .line 458
    :cond_3
    const-string v1, "MissedCallCover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallDetails2 number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->setCoverInformation()V

    .line 461
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040196

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;-><init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;Landroid/content/Context;I[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mMissedAdapter:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;

    .line 462
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mMissedList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mMissedAdapter:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 463
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mMissedList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCoverInformation()V
    .locals 13

    .prologue
    const/16 v12, 0x101

    const/16 v11, 0x15

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    .line 472
    .local v0, "mContactPhotoManager":Lcom/android/contacts/ContactPhotoManager;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mContactBackgroundCover:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget v5, v5, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    int-to-long v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$100(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 476
    .local v10, "mDisplayNumber":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mContactDetailName:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mContactDetailName:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 484
    .end local v10    # "mDisplayNumber":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mTitleName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mListCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const-string v1, "ctc_roaming_timezone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    .line 489
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mTitleTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-wide v3, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const-string v5, "Asia/Shanghai"

    invoke-static {v2, v3, v4, v12, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :goto_1
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    const/16 v8, 0x15

    .line 500
    .local v8, "MESSAGE_CALL_TYPE":I
    const/16 v7, 0x16

    .line 502
    .local v7, "CMF_CALL_TYPE":I
    const-string v9, ""

    .line 504
    .local v9, "callTimeText":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    if-ne v1, v11, :cond_4

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0379

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 514
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mTitleTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mTitleTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mListCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    .end local v7    # "CMF_CALL_TYPE":I
    .end local v8    # "MESSAGE_CALL_TYPE":I
    .end local v9    # "callTimeText":Ljava/lang/String;
    :cond_1
    return-void

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mContactDetailName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mContactDetailName:Landroid/widget/TextView;

    const/high16 v2, 0x41b00000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 492
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mTitleTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-wide v3, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-static {v2, v3, v4, v12}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 507
    .restart local v7    # "CMF_CALL_TYPE":I
    .restart local v8    # "MESSAGE_CALL_TYPE":I
    .restart local v9    # "callTimeText":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_5

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0378

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 509
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->mOneDetail:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    if-ne v1, v11, :cond_0

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e03a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2
.end method
