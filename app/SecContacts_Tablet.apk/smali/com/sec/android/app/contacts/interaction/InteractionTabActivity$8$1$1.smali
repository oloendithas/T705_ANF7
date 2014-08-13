.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1$1;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;)V
    .locals 0

    .prologue
    .line 3058
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1$1;->this$2:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3061
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1$1;->this$2:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;->val$scrollTabView:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1$1;->this$2:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;

    iget v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$8;->val$tabIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 3062
    return-void
.end method
