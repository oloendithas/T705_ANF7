.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7748
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 7749
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7750
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;->items:Ljava/util/ArrayList;

    .line 7751
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 7755
    move-object/from16 v12, p2

    .line 7756
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_0

    .line 7757
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 7758
    .local v13, "vi":Landroid/view/LayoutInflater;
    const v0, 0x7f0400a6

    const/4 v2, 0x0

    invoke-virtual {v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 7761
    .end local v13    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;

    .line 7762
    .local v11, "ti":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;
    invoke-virtual {v11}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7763
    .local v7, "inumber":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->getType()I

    move-result v9

    .line 7764
    .local v9, "numberType":I
    const/4 v8, 0x0

    .line 7765
    .local v8, "numberLabel":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v11}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->getContactID()I

    move-result v2

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getAccountType(I)Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5000(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)Ljava/lang/String;

    move-result-object v6

    .line 7767
    .local v6, "accountType":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7768
    if-nez v9, :cond_3

    .line 7769
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7771
    .local v1, "phoneUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 7772
    .local v10, "phonesCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 7773
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7774
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 7776
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 7799
    .end local v1    # "phoneUri":Landroid/net/Uri;
    .end local v10    # "phonesCursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const v0, 0x7f0901ad

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7800
    const v0, 0x7f0901ae

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7802
    return-object v12

    .line 7779
    :cond_3
    const/4 v0, 0x2

    if-ne v9, v0, :cond_4

    .line 7780
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 7782
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e03d9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 7785
    :cond_5
    if-nez v9, :cond_7

    .line 7786
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7788
    .restart local v1    # "phoneUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 7789
    .restart local v10    # "phonesCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 7790
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7791
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 7793
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 7797
    .end local v1    # "phoneUri":Landroid/net/Uri;
    .end local v10    # "phonesCursor":Landroid/database/Cursor;
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItemAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method
