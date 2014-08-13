.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetDefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultSettingAdapter"
.end annotation


# static fields
.field private static final VIEW_TYPE_COUNT:I = 0x3

.field public static final VIEW_TYPE_DETAIL_ENTRY:I = 0x0

.field public static final VIEW_TYPE_KIND_TITLE_ENTRY:I = 0x1

.field public static final VIEW_TYPE_SEPARATOR_ENTRY:I = 0x2


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Landroid/app/ListActivity;)V
    .locals 1
    .param p2, "context"    # Landroid/app/ListActivity;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 910
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 911
    return-void
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "entry"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .prologue
    const v4, 0x7f09044a

    const v5, 0x7f09043c

    const v6, 0x7f0903b0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1010
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;

    .line 1012
    .local v2, "views":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1013
    iget-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    if-eqz v3, :cond_5

    .line 1014
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    iget-object v7, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    :goto_0
    iget-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    if-eqz v3, :cond_7

    .line 1028
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    iget-object v7, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    :goto_1
    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_8

    .line 1038
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    iget-object v7, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1039
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1044
    :goto_2
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1046
    iget-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    if-eqz v3, :cond_9

    .line 1047
    iget v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    packed-switch v3, :pswitch_data_0

    .line 1078
    :cond_0
    :goto_3
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->radioBtn:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1082
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$2100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1083
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    const/4 v7, 0x0

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {v3, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$2202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Lcom/sec/android/app/contacts/ListHoverManager;)Lcom/sec/android/app/contacts/ListHoverManager;

    .line 1084
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    new-instance v7, Lcom/sec/android/app/contacts/ListHoverManager;

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$2100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sec/android/app/contacts/ListHoverManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {v3, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$2202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Lcom/sec/android/app/contacts/ListHoverManager;)Lcom/sec/android/app/contacts/ListHoverManager;

    .line 1086
    iget-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    if-eqz v3, :cond_a

    move v3, v4

    :goto_5
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1087
    .local v1, "type":Landroid/widget/TextView;
    iget-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    if-eqz v3, :cond_b

    const v3, 0x7f09044c

    :goto_6
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1089
    .local v0, "data":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1090
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$2200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v3

    iget-boolean v7, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    if-eqz v7, :cond_c

    :goto_7
    iget-boolean v5, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    if-eqz v5, :cond_3

    const v6, 0x7f09044c

    :cond_3
    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/contacts/ListHoverManager;->setTextViewId(II)V

    .line 1093
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$2200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/ListHoverManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sec/android/app/contacts/ListHoverManager;->setHoverPopup(Landroid/view/View;)V

    .line 1096
    .end local v0    # "data":Landroid/widget/TextView;
    .end local v1    # "type":Landroid/widget/TextView;
    :cond_4
    return-void

    .line 1018
    :cond_5
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    iget-object v7, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1023
    :cond_6
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1032
    :cond_7
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v7, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1041
    :cond_8
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1049
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v3, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1050
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1051
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I
    invoke-static {v3, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1052
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z
    invoke-static {v3, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_3

    .line 1056
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v3, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1057
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1058
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I
    invoke-static {v3, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1059
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z
    invoke-static {v3, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_3

    .line 1063
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v3, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1002(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1064
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1065
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I
    invoke-static {v3, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1102(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1066
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z
    invoke-static {v3, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_3

    .line 1070
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v3, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1071
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1072
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I
    invoke-static {v3, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 1073
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z
    invoke-static {v3, v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_3

    .line 1080
    :cond_9
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->radioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_4

    :cond_a
    move v3, v5

    .line 1086
    goto/16 :goto_5

    .restart local v1    # "type":Landroid/widget/TextView;
    :cond_b
    move v3, v6

    .line 1087
    goto/16 :goto_6

    .restart local v0    # "data":Landroid/widget/TextView;
    :cond_c
    move v4, v5

    .line 1090
    goto/16 :goto_7

    .line 1047
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 969
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 974
    .local v0, "entry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    if-eqz p2, :cond_0

    .line 975
    move-object v1, p2

    .line 986
    .local v1, "v":Landroid/view/View;
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->bindDetailView(ILandroid/view/View;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    .line 987
    return-object v1

    .line 979
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0401ed

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 982
    .restart local v1    # "v":Landroid/view/View;
    new-instance v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$2000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 983
    .local v2, "viewCache":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 998
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;

    .line 1000
    .local v0, "entry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 1002
    .local v1, "result":Landroid/view/View;
    :goto_0
    const v3, 0x7f0901f0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1003
    .local v2, "titleTextView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1006
    return-object v1

    .line 1000
    .end local v1    # "result":Landroid/view/View;
    .end local v2    # "titleTextView":Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040186

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 991
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 994
    .local v0, "result":Landroid/view/View;
    :goto_0
    return-object v0

    .line 991
    .end local v0    # "result":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040057

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 945
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 900
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 935
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    .line 936
    .local v0, "entry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v1

    .line 939
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 925
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 955
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 963
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 961
    :goto_0
    return-object v0

    .line 959
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 961
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
