.class Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$5;
.super Ljava/lang/Object;
.source "ContextAwareLanguageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$5;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$5;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    # invokes: Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->saveCSL()V
    invoke-static {v0}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;->access$200(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V

    .line 204
    return-void
.end method
