.class Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$3;
.super Ljava/lang/Object;
.source "ContextAwareLanguageManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$3;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I
    .locals 2
    .param p1, "o1"    # Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;
    .param p2, "o2"    # Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$3;->compare(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$ContextAwareLanguageDataStructure;)I

    move-result v0

    return v0
.end method
