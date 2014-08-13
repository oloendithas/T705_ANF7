.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
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

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/app/ListActivity;)V
    .locals 1
    .param p2, "context"    # Landroid/app/ListActivity;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 888
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 889
    invoke-static {p2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    new-instance v0, Lcom/sec/android/app/contacts/ListHoverManager;

    invoke-direct {v0, p2}, Lcom/sec/android/app/contacts/ListHoverManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;
    invoke-static {p1, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$102(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Lcom/sec/android/app/contacts/ListHoverManager;)Lcom/sec/android/app/contacts/ListHoverManager;

    .line 892
    :cond_0
    return-void
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 991
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;

    .line 993
    .local v0, "views":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    iget-object v1, p3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 994
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->type:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1000
    :goto_0
    iget-object v1, p3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1001
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$300(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1005
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1022
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->data:Landroid/widget/TextView;

    iget v3, p3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    # invokes: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setMaxLines(Landroid/widget/TextView;I)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$600(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/widget/TextView;I)V

    .line 1028
    return-void

    .line 997
    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->type:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1006
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$400(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1007
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$400(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1008
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1010
    :cond_3
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1012
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$500(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1013
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$500(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1014
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1016
    :cond_5
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1019
    :cond_6
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .line 955
    .local v0, "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    if-eqz p2, :cond_0

    .line 956
    move-object v1, p2

    .line 957
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;

    .line 967
    .local v2, "viewCache":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->bindDetailView(ILandroid/view/View;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    .line 968
    return-object v1

    .line 960
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0401e1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 963
    .restart local v1    # "v":Landroid/view/View;
    new-instance v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;

    invoke-direct {v2, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;-><init>(Landroid/view/View;)V

    .line 964
    .restart local v2    # "viewCache":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
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

    .line 979
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;

    .line 981
    .local v0, "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 983
    .local v1, "result":Landroid/view/View;
    :goto_0
    const v3, 0x7f0901f0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 984
    .local v2, "titleTextView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 987
    return-object v1

    .line 981
    .end local v1    # "result":Landroid/view/View;
    .end local v2    # "titleTextView":Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

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
    .line 972
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 975
    .local v0, "result":Landroid/view/View;
    :goto_0
    return-object v0

    .line 972
    .end local v0    # "result":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

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
    .line 926
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$200(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 901
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$200(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 878
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 916
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$200(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 917
    .local v0, "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->getId()J

    move-result-wide v1

    .line 920
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
    .line 906
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$200(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 936
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 944
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 942
    :goto_0
    return-object v0

    .line 940
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 942
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 936
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
    .line 911
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 931
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
