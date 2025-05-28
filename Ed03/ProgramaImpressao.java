/**
 * Interface que define o comportamento de objetos que podem ser impressos.
 */
interface Imprimivel {
    /**
     * Método responsável por imprimir o conteúdo.
     */
    void imprimir();
}

/**
 * Representa um documento de texto com título e conteúdo.
 */
class DocumentoTexto implements Imprimivel {
    private String titulo;
    private String conteudo;

    public DocumentoTexto(String titulo, String conteudo) {
        this.titulo = titulo;
        this.conteudo = conteudo;
    }

    @Override
    public void imprimir() {
        System.out.println(titulo.toUpperCase());
        System.out.println(conteudo);
        System.out.println();
    }
}

/**
 * Representa uma imagem digital com nome de arquivo e resolução.
 */
class ImagemDigital implements Imprimivel {
    private String nomeArquivo;
    private String resolucao;

    public ImagemDigital(String nomeArquivo, String resolucao) {
        this.nomeArquivo = nomeArquivo;
        this.resolucao = resolucao;
    }

    @Override
    public void imprimir() {
        System.out.println("Arquivo: " + nomeArquivo);
        System.out.println("Resolução: " + resolucao);
        System.out.println();
    }
}

/**
 * Representa um gráfico estatístico com título e tipo.
 */
class GraficoEstatistico implements Imprimivel {
    private String titulo;
    private String tipoGrafico;

    public GraficoEstatistico(String titulo, String tipoGrafico) {
        this.titulo = titulo;
        this.tipoGrafico = tipoGrafico;
    }

    @Override
    public void imprimir() {
        System.out.println("Gráfico do tipo: " + tipoGrafico.toUpperCase());
        System.out.println("Título: " + titulo.toUpperCase());
        System.out.println();
    }
}

/**
 * Representa um relatório em PDF com autor e número de páginas.
 */
class RelatorioPDF implements Imprimivel {
    private String autor;
    private int numeroPaginas;

    public RelatorioPDF(String autor, int numeroPaginas) {
        this.autor = autor;
        this.numeroPaginas = numeroPaginas;
    }

    @Override
    public void imprimir() {
        System.out.println("Autor: " + autor);
        System.out.println("Total de páginas: " + numeroPaginas);
        System.out.println();
    }
}

/**
 * Classe principal para executar a impressão de diferentes tipos de conteúdo.
 */
public class ProgramaImpressao {
    public static void main(String[] args) {
        DocumentoTexto doc = new DocumentoTexto("Documento de Apresentação", "Este é o conteúdo do documento.");
        ImagemDigital img = new ImagemDigital("paisagem.jpg", "1920x1080");
        GraficoEstatistico graf = new GraficoEstatistico("Distribuição de Vendas", "barra");
        RelatorioPDF rel = new RelatorioPDF("João Silva", 12);

        doc.imprimir();
        img.imprimir();
        graf.imprimir();
        rel.imprimir();
    }
}
