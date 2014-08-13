.class Lcom/android/contacts/detail/ContactLoaderFragment$5;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;->doShareNameCardAction(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$rList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$5;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$5;->val$rList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1559
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$5;->val$rList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1560
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$5;->val$rList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 1562
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$5;->val$intent:Landroid/content/Intent;

    .line 1563
    .local v1, "mShareIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1565
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$5;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$800(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1567
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$5;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    # getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$200(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1568
    return-void
.end method
