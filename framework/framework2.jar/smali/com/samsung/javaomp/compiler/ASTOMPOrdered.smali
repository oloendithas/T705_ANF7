.class public Lcom/samsung/javaomp/compiler/ASTOMPOrdered;
.super Lcom/samsung/javaomp/compiler/SimpleNode;


# instance fields
.field private statement:Lcom/samsung/javaomp/compiler/ASTStatement;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/compiler/SimpleNode;-><init>(Lcom/samsung/javaomp/compiler/JavaParser;I)V

    return-void
.end method


# virtual methods
.method public getStatement()Lcom/samsung/javaomp/compiler/ASTStatement;
    .registers 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/ASTOMPOrdered;->statement:Lcom/samsung/javaomp/compiler/ASTStatement;

    return-object v0
.end method

.method public jjtAccept(Lcom/samsung/javaomp/compiler/JavaParserVisitor;Ljava/io/PrintWriter;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1, p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserVisitor;->visit(Lcom/samsung/javaomp/compiler/ASTOMPOrdered;Ljava/io/PrintWriter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setStatement(Lcom/samsung/javaomp/compiler/ASTStatement;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/ASTOMPOrdered;->statement:Lcom/samsung/javaomp/compiler/ASTStatement;

    return-void
.end method
