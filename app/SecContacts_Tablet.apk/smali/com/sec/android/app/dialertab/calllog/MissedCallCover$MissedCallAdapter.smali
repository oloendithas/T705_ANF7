.class Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;
.super Landroid/widget/BaseAdapter;
.source "MissedCallCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/MissedCallCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedCallAdapter"
.end annotation


# static fields
.field private static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field private static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# instance fields
.field layoutResourceId:I

.field mContext:Landroid/content/Context;

.field private mDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private mInflater:Landroid/view/LayoutInflater;

.field final sendNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;Landroid/content/Context;I[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "mDetails"    # [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->sendNumber:Ljava/lang/String;

    .line 535
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    .line 536
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 537
    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->layoutResourceId:I

    .line 538
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 560
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 565
    const-string v10, "MissedCallCover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getView, position : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    if-nez p2, :cond_0

    .line 573
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 574
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->layoutResourceId:I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 577
    :cond_0
    const v10, 0x7f090399

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 578
    .local v3, "mMissedListLayout":Landroid/widget/LinearLayout;
    const v10, 0x7f09039c

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 579
    .local v4, "mMissedTimeLayout":Landroid/widget/LinearLayout;
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    aget-object v2, v10, p1

    .line 581
    .local v2, "mDetailItem":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    if-nez p1, :cond_6

    .line 582
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 583
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 585
    const v10, 0x7f090153

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 586
    .local v8, "mTypeText":Landroid/widget/TextView;
    const v10, 0x7f09010b

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 587
    .local v6, "mNumber":Landroid/widget/TextView;
    const v10, 0x7f09039a

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 589
    .local v1, "mCallButton":Landroid/widget/ImageButton;
    const-string v7, ""

    .line 591
    .local v7, "mType":Ljava/lang/String;
    iget-object v10, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-eqz v10, :cond_4

    .line 592
    iget v10, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    if-nez v10, :cond_3

    .line 593
    iget-object v10, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1

    const-string v10, ""

    iget-object v11, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 594
    iget-object v10, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 607
    :cond_1
    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v10}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$100(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v10

    iget-object v11, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v12, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    iget-object v13, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    iget-object v14, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 610
    .local v9, "number":Ljava/lang/CharSequence;
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v10, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v11, "-1"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v11, "-2"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v11, "-3"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 615
    :cond_2
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    .end local v1    # "mCallButton":Landroid/widget/ImageButton;
    .end local v6    # "mNumber":Landroid/widget/TextView;
    .end local v7    # "mType":Ljava/lang/String;
    .end local v8    # "mTypeText":Landroid/widget/TextView;
    .end local v9    # "number":Ljava/lang/CharSequence;
    :goto_1
    return-object p2

    .line 597
    .restart local v1    # "mCallButton":Landroid/widget/ImageButton;
    .restart local v6    # "mNumber":Landroid/widget/TextView;
    .restart local v7    # "mType":Ljava/lang/String;
    .restart local v8    # "mTypeText":Landroid/widget/TextView;
    :cond_3
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    invoke-static {v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v10, ""

    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    invoke-static {v12}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 599
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    invoke-static {v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 604
    :cond_4
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 618
    .restart local v9    # "number":Ljava/lang/CharSequence;
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    new-instance v10, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1;

    invoke-direct {v10, p0, v9}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 651
    .end local v1    # "mCallButton":Landroid/widget/ImageButton;
    .end local v6    # "mNumber":Landroid/widget/TextView;
    .end local v7    # "mType":Ljava/lang/String;
    .end local v8    # "mTypeText":Landroid/widget/TextView;
    .end local v9    # "number":Ljava/lang/CharSequence;
    :cond_6
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 652
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 653
    const v10, 0x7f09039e

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 655
    .local v5, "mMissedTimeText":Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    iget-wide v12, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const/16 v14, 0x101

    invoke-static {v11, v12, v13, v14}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    iget-wide v12, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-static {v11, v12, v13}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
