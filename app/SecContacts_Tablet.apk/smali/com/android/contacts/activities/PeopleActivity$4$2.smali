.class Lcom/android/contacts/activities/PeopleActivity$4$2;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/PeopleActivity$4;

.field final synthetic val$scrollTabView:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity$4;Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$4$2;->this$1:Lcom/android/contacts/activities/PeopleActivity$4;

    iput-object p2, p0, Lcom/android/contacts/activities/PeopleActivity$4$2;->val$scrollTabView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$4$2;->val$scrollTabView:Lcom/android/internal/widget/ScrollingTabContainerView;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$4$2$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$4$2$1;-><init>(Lcom/android/contacts/activities/PeopleActivity$4$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1522
    return-void
.end method
