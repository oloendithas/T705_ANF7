.class public Lcom/samsung/javaomp/compiler/ASTClassOrInterfaceBody;
.super Lcom/samsung/javaomp/compiler/SimpleNode;


# instance fields
.field private fields:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTClassOrInterfaceBody;->fields:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/ASTClassOrInterfaceBody;->fields:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTClassOrInterfaceBody;->fields:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFields()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTClassOrInterfaceBody;->fields:Ljava/util/LinkedList;

    return-object v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/ASTClassOrInterfaceBody;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
