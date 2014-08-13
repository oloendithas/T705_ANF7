.class Lcom/android/contacts/activities/PeopleActivity$4$3$1;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity$4$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/contacts/activities/PeopleActivity$4$3;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity$4$3;)V
    .locals 0

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$4$3$1;->this$2:Lcom/android/contacts/activities/PeopleActivity$4$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$4$3$1;->this$2:Lcom/android/contacts/activities/PeopleActivity$4$3;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity$4$3;->val$scrollTabView:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$4$3$1;->this$2:Lcom/android/contacts/activities/PeopleActivity$4$3;

    iget-object v1, v1, Lcom/android/contacts/activities/PeopleActivity$4$3;->this$1:Lcom/android/contacts/activities/PeopleActivity$4;

    iget v1, v1, Lcom/android/contacts/activities/PeopleActivity$4;->val$tabIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 1537
    return-void
.end method
